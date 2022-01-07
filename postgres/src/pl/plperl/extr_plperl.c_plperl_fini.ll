; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_fini.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"plperl_fini\00", align 1
@plperl_ending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"plperl_fini: skipped\00", align 1
@plperl_held_interp = common dso_local global i64 0, align 8
@plperl_interp_hash = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"plperl_fini: done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @plperl_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_fini(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEBUG3, align 4
  %8 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @plperl_ending, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @DEBUG3, align 4
  %13 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

14:                                               ; preds = %2
  %15 = call i32 @plperl_destroy_interp(i64* @plperl_held_interp)
  %16 = load i32, i32* @plperl_interp_hash, align 4
  %17 = call i32 @hash_seq_init(i32* %5, i32 %16)
  br label %18

18:                                               ; preds = %32, %14
  %19 = call %struct.TYPE_4__* @hash_seq_search(i32* %5)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = call i32 @activate_interpreter(%struct.TYPE_4__* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @plperl_destroy_interp(i64* %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @DEBUG3, align 4
  %35 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @plperl_destroy_interp(i64*) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @hash_seq_search(i32*) #1

declare dso_local i32 @activate_interpreter(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
