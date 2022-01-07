; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_geometry = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@w = common dso_local global i32 0, align 4
@w_per = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@h = common dso_local global i32 0, align 4
@h_per = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@x = common dso_local global i32 0, align 4
@x_per = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@y_per = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @print_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_geometry(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.m_geometry*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.m_geometry*
  store %struct.m_geometry* %8, %struct.m_geometry** %5, align 8
  %9 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %11 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %16 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %14, %2
  %20 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %21 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* @w, align 4
  %26 = load i32, i32* @w_per, align 4
  %27 = call i32 @APPEND_PER(i32 %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @talloc_asprintf_append(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = load i32, i32* @h, align 4
  %31 = load i32, i32* @h_per, align 4
  %32 = call i32 @APPEND_PER(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %35 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %41 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i8* @talloc_asprintf_append(i8* %39, i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* @x, align 4
  %48 = load i32, i32* @x_per, align 4
  %49 = call i32 @APPEND_PER(i32 %47, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.m_geometry*, %struct.m_geometry** %5, align 8
  %52 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %57 = call i8* @talloc_asprintf_append(i8* %50, i8* %56)
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* @y, align 4
  %59 = load i32, i32* @y_per, align 4
  %60 = call i32 @APPEND_PER(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %38, %33
  br label %62

62:                                               ; preds = %61, %14
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @APPEND_PER(i32, i32) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
