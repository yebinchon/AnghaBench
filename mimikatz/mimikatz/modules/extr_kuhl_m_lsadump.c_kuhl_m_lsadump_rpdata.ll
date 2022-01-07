; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_rpdata.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_rpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i32] [i32 101, i32 120, i32 112, i32 111, i32 114, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 99, i32 114, i32 101, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@.str.4 = private unnamed_addr constant [47 x i32] [i32 107, i32 117, i32 104, i32 108, i32 95, i32 109, i32 95, i32 108, i32 115, i32 97, i32 100, i32 117, i32 109, i32 112, i32 95, i32 76, i32 115, i32 97, i32 82, i32 101, i32 116, i32 114, i32 105, i32 101, i32 118, i32 101, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_rpdata(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = call i64 @kull_m_string_args_byName(i32 %11, i32** %12, i8* bitcast ([7 x i32]* @.str to i8*), i32** null, i32* null)
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i64 @kull_m_string_args_byName(i32 %14, i32** %15, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32** null, i32* null)
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32**, i32*** %4, align 8
  %19 = call i64 @kull_m_string_args_byName(i32 %17, i32** %18, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32** %7, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32**, i32*** %4, align 8
  %24 = call i64 @kull_m_string_args_byName(i32 %22, i32** %23, i8* bitcast ([7 x i32]* @.str.3 to i8*), i32** %8, i32* null)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32* %25, i32* %26, %struct.TYPE_3__* %6, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @NT_SUCCESS(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kull_m_string_wprintf_hex(i32 %34, i32 %36, i32 1048577)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LocalFree(i32 %39)
  br label %44

41:                                               ; preds = %21
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.4 to i8*), i32 %42)
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %46
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32*, i32*, %struct.TYPE_3__*, i64) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
