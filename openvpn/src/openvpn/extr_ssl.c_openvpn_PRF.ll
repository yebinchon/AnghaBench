; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_openvpn_PRF.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_openvpn_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_id = type { i8* }
%struct.buffer = type { i32 }

@SID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i32, i8*, i32, %struct.session_id*, %struct.session_id*, i8*, i32)* @openvpn_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openvpn_PRF(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, %struct.session_id* %7, %struct.session_id* %8, i8* %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.session_id*, align 8
  %20 = alloca %struct.session_id*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.buffer, align 4
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store %struct.session_id* %7, %struct.session_id** %19, align 8
  store %struct.session_id* %8, %struct.session_id** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 %10, i32* %22, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = load i32, i32* %16, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %18, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @SID_SIZE, align 4
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %29, %31
  %33 = call i32 @alloc_buf(i32 %32)
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @buf_write(%struct.buffer* %23, i8* %35, i32 %37)
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @buf_write(%struct.buffer* %23, i8* %40, i32 %41)
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i8*, i8** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @buf_write(%struct.buffer* %23, i8* %44, i32 %45)
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.session_id*, %struct.session_id** %19, align 8
  %49 = icmp ne %struct.session_id* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %11
  %51 = load %struct.session_id*, %struct.session_id** %19, align 8
  %52 = getelementptr inbounds %struct.session_id, %struct.session_id* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @SID_SIZE, align 4
  %55 = call i32 @buf_write(%struct.buffer* %23, i8* %53, i32 %54)
  %56 = call i32 @ASSERT(i32 %55)
  br label %57

57:                                               ; preds = %50, %11
  %58 = load %struct.session_id*, %struct.session_id** %20, align 8
  %59 = icmp ne %struct.session_id* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.session_id*, %struct.session_id** %20, align 8
  %62 = getelementptr inbounds %struct.session_id, %struct.session_id* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @SID_SIZE, align 4
  %65 = call i32 @buf_write(%struct.buffer* %23, i8* %63, i32 %64)
  %66 = call i32 @ASSERT(i32 %65)
  br label %67

67:                                               ; preds = %60, %57
  %68 = call i32 @BPTR(%struct.buffer* %23)
  %69 = call i32 @BLEN(%struct.buffer* %23)
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i8*, i8** %21, align 8
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @tls1_PRF(i32 %68, i32 %69, i8* %70, i32 %71, i8* %72, i32 %73)
  %75 = call i32 @buf_clear(%struct.buffer* %23)
  %76 = call i32 @free_buf(%struct.buffer* %23)
  %77 = load i8*, i8** %21, align 8
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @VALGRIND_MAKE_READABLE(i8* %77, i32 %78)
  ret void
}

declare dso_local i32 @alloc_buf(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_write(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @tls1_PRF(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @buf_clear(%struct.buffer*) #1

declare dso_local i32 @free_buf(%struct.buffer*) #1

declare dso_local i32 @VALGRIND_MAKE_READABLE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
