; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_rel_comp.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_rel_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_match = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sym_rel_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_rel_comp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sym_match*, align 8
  %7 = alloca %struct.sym_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sym_match*
  store %struct.sym_match* %11, %struct.sym_match** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sym_match*
  store %struct.sym_match* %13, %struct.sym_match** %7, align 8
  %14 = load %struct.sym_match*, %struct.sym_match** %6, align 8
  %15 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sym_match*, %struct.sym_match** %6, align 8
  %18 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.sym_match*, %struct.sym_match** %6, align 8
  %22 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = icmp eq i64 %20, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sym_match*, %struct.sym_match** %7, align 8
  %30 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sym_match*, %struct.sym_match** %7, align 8
  %33 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.sym_match*, %struct.sym_match** %7, align 8
  %37 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strlen(i32 %40)
  %42 = icmp eq i64 %35, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %69

50:                                               ; preds = %46, %2
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %69

57:                                               ; preds = %53, %50
  %58 = load %struct.sym_match*, %struct.sym_match** %6, align 8
  %59 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sym_match*, %struct.sym_match** %7, align 8
  %64 = getelementptr inbounds %struct.sym_match, %struct.sym_match* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcmp(i32 %62, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %56, %49
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
