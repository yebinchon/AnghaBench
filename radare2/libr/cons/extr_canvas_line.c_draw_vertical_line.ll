; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_draw_vertical_line.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_draw_vertical_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@useUtf8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @draw_vertical_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_vertical_line(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %68

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %68

33:                                               ; preds = %21
  %34 = load i64, i64* @useUtf8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @utf8_line_vert(i32 %37)
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i8* [ %38, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %39 ]
  store i8* %41, i8** %12, align 8
  %42 = call i32 @r_cons_break_push(i32* null, i32* null)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %63, %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = call i64 (...) @r_cons_is_breaked()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @G(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @W(i8* %60)
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %44

66:                                               ; preds = %53, %44
  %67 = call i32 (...) @r_cons_break_pop()
  br label %68

68:                                               ; preds = %66, %32, %20
  ret void
}

declare dso_local i8* @utf8_line_vert(i32) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local i64 @G(i32, i32) #1

declare dso_local i32 @W(i8*) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
