; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_variable_trace.c_verify_traced_variables.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_variable_trace.c_verify_traced_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32*, i32*, i32* }

@NUM_TRACED_VARIABLES = common dso_local global i32 0, align 4
@traced_variables = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Traced variable \22%s\22 has been modified\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Between %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"And %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Previous value \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\0ANew value \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_traced_variables(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %113, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NUM_TRACED_VARIABLES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %116

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @traced_variables, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %106

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %106

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @memcmp(i32* %31, i32* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %28
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %53)
  %55 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %71, %40
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @print_hex8(i32 %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %56

74:                                               ; preds = %56
  %75 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %92, %74
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @print_hex8(i32 %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %79

95:                                               ; preds = %79
  %96 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i32* %99, i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %95, %28
  br label %106

106:                                              ; preds = %105, %23, %14
  %107 = load i8*, i8** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %10

116:                                              ; preds = %10
  ret void
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @print_hex8(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
