; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_process_root_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/atl/extr_registrar.c_do_process_root_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ward.len == 0, failed\0A\00", align 1
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@root_keys = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Wrong root key name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed, expected '{', got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Processing key failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @do_process_root_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_process_root_key(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64*, i64** %4, align 8
  store i64* %10, i64** %6, align 8
  %11 = call i32 @strbuf_init(%struct.TYPE_7__* %7)
  %12 = call i32 @get_word(i64** %6, %struct.TYPE_7__* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %110, %18
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %29, i32* %8, align 4
  br label %111

30:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_keys, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %33)
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_keys, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lstrcmpiW(i8* %38, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %31

52:                                               ; preds = %47, %31
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_keys, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @debugstr_w(i8* %59)
  %61 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %62, i32* %8, align 4
  br label %111

63:                                               ; preds = %52
  %64 = call i32 @get_word(i64** %6, %struct.TYPE_7__* %7)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %111

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 123
  br i1 %82, label %83, label %89

83:                                               ; preds = %76, %69
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @debugstr_w(i8* %85)
  %87 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %88, i32* %8, align 4
  br label %111

89:                                               ; preds = %76
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root_keys, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @do_process_key(i64** %6, i32 %95, %struct.TYPE_7__* %7, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %111

104:                                              ; preds = %89
  %105 = call i32 @get_word(i64** %6, %struct.TYPE_7__* %7)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @FAILED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %111

110:                                              ; preds = %104
  br label %19

111:                                              ; preds = %109, %101, %83, %68, %57, %27, %19
  %112 = call i32 (...) @GetProcessHeap()
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @HeapFree(i32 %112, i32 0, i8* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @strbuf_init(%struct.TYPE_7__*) #1

declare dso_local i32 @get_word(i64**, %struct.TYPE_7__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @lstrcmpiW(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @do_process_key(i64**, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
