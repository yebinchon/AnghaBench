; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_em4100.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_em4100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 114, i32 101, i32 97, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 10, i32 69, i32 77, i32 52, i32 49, i32 48, i32 48, i32 32, i32 114, i32 101, i32 97, i32 100, i32 101, i32 114, i32 10, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [34 x i32] [i32 32, i32 42, i32 32, i32 84, i32 97, i32 103, i32 32, i32 73, i32 68, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 73, i32 54, i32 52, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 73, i32 54, i32 52, i32 120, i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 115, i32 114, i32 57, i32 56, i32 95, i32 114, i32 101, i32 97, i32 100, i32 95, i32 101, i32 109, i32 105, i32 100, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 82, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 117, i32 110, i32 105, i32 113, i32 117, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [3 x i32] [i32 105, i32 100, i32 0], align 4
@.str.6 = private unnamed_addr constant [18 x i32] [i32 10, i32 69, i32 77, i32 52, i32 49, i32 48, i32 48, i32 32, i32 101, i32 110, i32 99, i32 111, i32 100, i32 101, i32 114, i32 10, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [29 x i32] [i32 32, i32 42, i32 32, i32 69, i32 77, i32 52, i32 49, i32 48, i32 48, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [68 x i32] [i32 84, i32 97, i32 103, i32 32, i32 73, i32 100, i32 32, i32 40, i32 47, i32 105, i32 100, i32 41, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 105, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 91, i32 48, i32 59, i32 50, i32 53, i32 53, i32 93, i32 32, i32 114, i32 97, i32 110, i32 103, i32 101, i32 32, i32 45, i32 32, i32 105, i32 116, i32 32, i32 119, i32 97, i32 115, i32 32, i32 37, i32 73, i32 54, i32 52, i32 117, i32 32, i32 40, i32 48, i32 120, i32 37, i32 73, i32 54, i32 52, i32 120, i32 41, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [34 x i32] [i32 84, i32 97, i32 103, i32 32, i32 73, i32 100, i32 32, i32 40, i32 47, i32 105, i32 100, i32 41, i32 32, i32 105, i32 115, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 44, i32 32, i32 111, i32 114, i32 32, i32 47, i32 114, i32 101, i32 97, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_em4100(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32**, i32*** %4, align 8
  %12 = call i64 @kull_m_string_args_byName(i32 %10, i32** %11, i8* bitcast ([5 x i32]* @.str to i8*), i32* null, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  %16 = call i64 @sr98_devices_get(%struct.TYPE_4__** %8, i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ptrtoint i32* %6 to i32
  %26 = call i64 @sr98_read_emid(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @_byteswap_uint64(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 24
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.2 to i8*), i32 %33, i32 %34)
  br label %38

36:                                               ; preds = %21
  %37 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([16 x i32]* @.str.3 to i8*))
  br label %38

38:                                               ; preds = %36, %28
  br label %42

39:                                               ; preds = %18
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.4 to i8*), i32 %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = call i32 @sr98_devices_free(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %42, %14
  br label %82

46:                                               ; preds = %2
  %47 = load i32, i32* %3, align 4
  %48 = load i32**, i32*** %4, align 8
  %49 = call i64 @kull_m_string_args_byName(i32 %47, i32** %48, i8* bitcast ([3 x i32]* @.str.5 to i8*), i32* %5, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.6 to i8*))
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @_wcstoui64(i32 %53, i32* null, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %56, 1099511627776
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.2 to i8*), i32 %59, i32 %60)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @kuhl_m_sr98_em4100_blocks(i32* %62, i32 %63)
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @kprintf(i8* bitcast ([29 x i32]* @.str.7 to i8*), i32 %66, i32 %68)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %72 = call i32 @ARRAYSIZE(i32* %71)
  %73 = call i32 @kuhl_m_sr98_sendBlocks(i32* %70, i32 %72)
  br label %78

74:                                               ; preds = %51
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([68 x i32]* @.str.8 to i8*), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %58
  br label %81

79:                                               ; preds = %46
  %80 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.9 to i8*))
  br label %81

81:                                               ; preds = %79, %78
  br label %82

82:                                               ; preds = %81, %45
  %83 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %83
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @sr98_devices_get(%struct.TYPE_4__**, i32*) #1

declare dso_local i64 @sr98_read_emid(i32, i32) #1

declare dso_local i32 @_byteswap_uint64(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @sr98_devices_free(%struct.TYPE_4__*) #1

declare dso_local i32 @_wcstoui64(i32, i32*, i32) #1

declare dso_local i32 @kuhl_m_sr98_em4100_blocks(i32*, i32) #1

declare dso_local i32 @kuhl_m_sr98_sendBlocks(i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
