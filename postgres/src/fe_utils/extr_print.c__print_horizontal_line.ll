; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c__print_horizontal_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c__print_horizontal_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i16, i64, %struct.TYPE_5__*, i32*)* @_print_horizontal_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_print_horizontal_line(i32 %0, i32* %1, i16 zeroext %2, i64 %3, %struct.TYPE_5__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i16 %2, i16* %9, align 2
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %13, align 8
  %21 = load i16, i16* %9, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @fputs(i8* %27, i32* %28)
  br label %44

30:                                               ; preds = %6
  %31 = load i16, i16* %9, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %41)
  br label %43

43:                                               ; preds = %34, %30
  br label %44

44:                                               ; preds = %43, %24
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %93, %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @fputs(i8* %61, i32* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub i32 %69, 1
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i16, i16* %9, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @fputc(i8 signext 32, i32* %77)
  br label %91

79:                                               ; preds = %72
  %80 = load i32*, i32** %12, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %86, i8* %89)
  br label %91

91:                                               ; preds = %79, %76
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %45

96:                                               ; preds = %45
  %97 = load i16, i16* %9, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32*, i32** %12, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %107)
  br label %120

109:                                              ; preds = %96
  %110 = load i16, i16* %9, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @fputs(i8* %116, i32* %117)
  br label %119

119:                                              ; preds = %113, %109
  br label %120

120:                                              ; preds = %119, %100
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @fputc(i8 signext 10, i32* %121)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
