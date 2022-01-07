; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_new_license.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_new_license.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@g_licence_key = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@g_licence_issued = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @licence_process_new_license to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @licence_process_new_license(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @in_uint8s(%struct.TYPE_7__* %6, i32 2)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @in_uint16_le(%struct.TYPE_7__* %8, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @s_check_rem(%struct.TYPE_7__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = call i8* (...) @rdssl_rc4_info_create()
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* @g_licence_key, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @rdssl_rc4_set_key(i8* %18, i8* %20, i32 16)
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @rdssl_rc4_crypt(i8* %22, i8* %26, i8* %30, i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @rdssl_rc4_info_delete(i8* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @in_uint8s(%struct.TYPE_7__* %35, i32 4)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %53, %16
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @in_uint8s(%struct.TYPE_7__* %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @in_uint32_le(%struct.TYPE_7__* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @s_check_rem(%struct.TYPE_7__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %63

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* @True, align 4
  store i32 %57, i32* @g_licence_issued, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @save_licence(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %51, %15
  ret void
}

declare dso_local i32 @in_uint8s(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @s_check_rem(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @rdssl_rc4_info_create(...) #1

declare dso_local i32 @rdssl_rc4_set_key(i8*, i8*, i32) #1

declare dso_local i32 @rdssl_rc4_crypt(i8*, i8*, i8*, i32) #1

declare dso_local i32 @rdssl_rc4_info_delete(i8*) #1

declare dso_local i32 @in_uint32_le(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @save_licence(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
