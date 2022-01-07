; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_find_one_alias.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_find_one_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliasinfo = type { i32, %struct.slabinfo* }
%struct.slabinfo = type { i32 }

@aliasinfo = common dso_local global %struct.aliasinfo* null, align 8
@aliases = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"kmall\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aliasinfo* (%struct.slabinfo*)* @find_one_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aliasinfo* @find_one_alias(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.aliasinfo*, align 8
  %3 = alloca %struct.slabinfo*, align 8
  %4 = alloca %struct.aliasinfo*, align 8
  %5 = alloca %struct.aliasinfo*, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %3, align 8
  store %struct.aliasinfo* null, %struct.aliasinfo** %5, align 8
  %6 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  store %struct.aliasinfo* %6, %struct.aliasinfo** %4, align 8
  br label %7

7:                                                ; preds = %44, %1
  %8 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  %9 = load %struct.aliasinfo*, %struct.aliasinfo** @aliasinfo, align 8
  %10 = load i32, i32* @aliases, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %9, i64 %11
  %13 = icmp ult %struct.aliasinfo* %8, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %7
  %15 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  %16 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %15, i32 0, i32 1
  %17 = load %struct.slabinfo*, %struct.slabinfo** %16, align 8
  %18 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %19 = icmp eq %struct.slabinfo* %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.aliasinfo*, %struct.aliasinfo** %5, align 8
  %22 = icmp ne %struct.aliasinfo* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.aliasinfo*, %struct.aliasinfo** %5, align 8
  %25 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @strlen(i32 %26)
  %28 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  %29 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strlen(i32 %30)
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %23, %20
  %34 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  store %struct.aliasinfo* %34, %struct.aliasinfo** %5, align 8
  %35 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  %36 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strncmp(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.aliasinfo*, %struct.aliasinfo** %5, align 8
  store %struct.aliasinfo* %41, %struct.aliasinfo** %2, align 8
  br label %49

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %23, %14
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.aliasinfo*, %struct.aliasinfo** %4, align 8
  %46 = getelementptr inbounds %struct.aliasinfo, %struct.aliasinfo* %45, i32 1
  store %struct.aliasinfo* %46, %struct.aliasinfo** %4, align 8
  br label %7

47:                                               ; preds = %7
  %48 = load %struct.aliasinfo*, %struct.aliasinfo** %5, align 8
  store %struct.aliasinfo* %48, %struct.aliasinfo** %2, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.aliasinfo*, %struct.aliasinfo** %2, align 8
  ret %struct.aliasinfo* %50
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
