; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_help_contents.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___update_help_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_help_contents(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @R_MAX(i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %13, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i32 @r_cons_canvas_gotoxy(i32* %64, i32 %66, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %2
  %73 = call i64 @r_str_pad(i8 signext 32, i32 128)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %15, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 0, %75
  %77 = load i8*, i8** %15, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @R_MIN(i32 %76, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %87, %88
  %90 = sub nsw i32 %89, 3
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 2
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i8* @r_str_ansi_crop(i8* %85, i32 0, i32 %86, i32 %90, i32 %94)
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = call i8* @r_str_prefix_all(i8* %96, i8* %97)
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %72
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %17, align 8
  store i8* %104, i8** %6, align 8
  br label %105

105:                                              ; preds = %101, %72
  br label %119

106:                                              ; preds = %2
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %110, %111
  %113 = sub nsw i32 %112, 3
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, 2
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i8* @r_str_ansi_crop(i8* %107, i32 %108, i32 %109, i32 %113, i32 %117)
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %106, %105
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32*, i32** %14, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @r_cons_canvas_write(i32* %123, i8* %124)
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %122, %119
  ret void
}

declare dso_local i32 @R_MAX(i32, i32) #1

declare dso_local i32 @r_cons_canvas_gotoxy(i32*, i32, i32) #1

declare dso_local i64 @r_str_pad(i8 signext, i32) #1

declare dso_local i32 @R_MIN(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @r_str_ansi_crop(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @r_str_prefix_all(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_canvas_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
