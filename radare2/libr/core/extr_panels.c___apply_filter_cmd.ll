; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___apply_filter_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___apply_filter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8**, i32 }

@.str = private unnamed_addr constant [19 x i8] c"filter is too big.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"~\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__apply_filter_cmd(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1024
  %21 = call i8* @r_str_ndup(i8* %13, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %3, align 8
  br label %67

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp sgt i32 %50, 1024
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @__show_status(i32* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %3, align 8
  br label %67

56:                                               ; preds = %39
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcat(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strcat(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %65, %52, %28
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__show_status(i32*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
