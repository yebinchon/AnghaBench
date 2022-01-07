; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_color_map.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_color_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badge_color = type { i8*, i64, i8* }

@color_map.max = internal global i32 -1, align 4
@badge_colors = common dso_local global %struct.badge_color* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @color_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @color_map(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.badge_color*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @color_map.max, align 4
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load %struct.badge_color*, %struct.badge_color** @badge_colors, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %14, i64 %16
  %18 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load %struct.badge_color*, %struct.badge_color** @badge_colors, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %22, i64 %24
  %26 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @simple_hash(i8* %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.badge_color*, %struct.badge_color** @badge_colors, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %30, i64 %32
  %34 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %33, i32 0, i32 1
  store i64 %29, i64* %34, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* @color_map.max, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @simple_hash(i8* %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %70, %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @color_map.max, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.badge_color*, %struct.badge_color** @badge_colors, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %49, i64 %51
  store %struct.badge_color* %52, %struct.badge_color** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.badge_color*, %struct.badge_color** %6, align 8
  %55 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.badge_color*, %struct.badge_color** %6, align 8
  %61 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %59, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load %struct.badge_color*, %struct.badge_color** %6, align 8
  %67 = getelementptr inbounds %struct.badge_color, %struct.badge_color* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %2, align 8
  br label %75

69:                                               ; preds = %58, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %44

73:                                               ; preds = %44
  %74 = load i8*, i8** %3, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %73, %65
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
