; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_file_access_chroot.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_file_access_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@PATH_SEPARATOR_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @check_file_access_chroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_access_chroot(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gc_arena, align 4
  %14 = alloca %struct.buffer, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = call i32 (...) @gc_new()
  %25 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %15, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i8*, i8** @PATH_SEPARATOR_STR, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %27, %29
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %30, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @alloc_buf_gc(i32 %35, %struct.gc_arena* %13)
  %37 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.buffer* %14 to i8*
  %39 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** @PATH_SEPARATOR_STR, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @buf_printf(%struct.buffer* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41, i8* %42)
  %44 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @BSTR(%struct.buffer* %14)
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @check_file_access(i32 %49, i8* %50, i32 %51, i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = call i32 @gc_free(%struct.gc_arena* %13)
  br label %61

55:                                               ; preds = %20
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @check_file_access(i32 %56, i8* %57, i32 %58, i8* %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %55, %23
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %19
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @check_file_access(i32, i8*, i32, i8*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
