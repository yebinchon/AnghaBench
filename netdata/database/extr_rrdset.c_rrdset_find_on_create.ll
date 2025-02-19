; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_find_on_create.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdset.c_rrdset_find_on_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_RRD_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RRDSET '%s', already exists.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @rrdset_find_on_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rrdset_find_on_create(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @rrdset_find(i32* %7, i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @unlikely(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @rrdset_isnot_obsolete(i32* %14)
  %16 = load i32, i32* @D_RRD_CALLS, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @debug(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %3, align 8
  br label %21

20:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local i32* @rrdset_find(i32*, i8*) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @rrdset_isnot_obsolete(i32*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
