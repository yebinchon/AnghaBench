; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_vFile_pread.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_vFile_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float* }

@.str = private unnamed_addr constant [5 x i8] c"F%x;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_vFile_pread(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call i32 @send_ack(%struct.TYPE_4__* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = fcmp une float %19, 7.000000e+01
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  store i32 -1, i32* %3, align 4
  br label %84

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oeq float %27, 4.500000e+01
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %84

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  %35 = load float, float* %34, align 4
  %36 = fptosi float %35 to i8
  %37 = call i32 @isxdigit(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %84

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = bitcast float* %43 to i8*
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %7)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %84

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %84

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load float*, float** %54, align 8
  %56 = bitcast float* %55 to i8*
  %57 = call i8* @strchr(i8* %56, i8 signext 59)
  store i8* %57, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load float*, float** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %63, i64 %67
  %69 = bitcast float* %68 to i8*
  %70 = icmp uge i8* %60, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59, %52
  store i32 -1, i32* %3, align 4
  br label %84

72:                                               ; preds = %59
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @memcpy(i32* %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %71, %51, %47, %39, %29, %21
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @send_ack(%struct.TYPE_4__*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
