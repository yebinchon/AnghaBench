; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_sort_aliases.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_sort_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliasinfo = type { i8*, i8* }

@aliasinfo = common dso_local global %struct.aliasinfo* null, align 8
@aliases = common dso_local global i32 0, align 4
@show_alias = common dso_local global i64 0, align 8
@show_inverted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_aliases() #0 {
  %1 = alloca %struct.aliasinfo*, align 8
  %2 = alloca %struct.aliasinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aliasinfo, align 8
  %6 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  store %struct.aliasinfo* %6, %struct.aliasinfo** %1, align 8
  br label %7

7:                                                ; preds = %61, %0
  %8 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %9 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  %10 = load i32, i32* @aliases, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %9, i64 %11
  %13 = icmp ult %struct.aliasinfo* %8, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %7
  %15 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %16 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %15, i64 1
  store %struct.aliasinfo* %16, %struct.aliasinfo** %2, align 8
  br label %17

17:                                               ; preds = %57, %14
  %18 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %19 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  %20 = load i32, i32* @aliases, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %19, i64 %21
  %23 = icmp ult %struct.aliasinfo* %18, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %26 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  %28 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %29 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  %31 = load i64, i64* @show_alias, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load i32, i32* @show_inverted, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %38 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  %40 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %41 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %36, %33, %24
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strcasecmp(i8* %44, i8* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %50 = call i32 @memcpy(%struct.aliasinfo* %5, %struct.aliasinfo* %49, i32 16)
  %51 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %52 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %53 = call i32 @memcpy(%struct.aliasinfo* %51, %struct.aliasinfo* %52, i32 16)
  %54 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %55 = call i32 @memcpy(%struct.aliasinfo* %54, %struct.aliasinfo* %5, i32 16)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  %59 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %58, i32 1
  store %struct.aliasinfo* %59, %struct.aliasinfo** %2, align 8
  br label %17

60:                                               ; preds = %17
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.aliasinfo*, %struct.aliasinfo** %1, align 8
  %63 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %62, i32 1
  store %struct.aliasinfo* %63, %struct.aliasinfo** %1, align 8
  br label %7

64:                                               ; preds = %7
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.aliasinfo*, %struct.aliasinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
