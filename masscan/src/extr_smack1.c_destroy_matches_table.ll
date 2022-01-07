; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_destroy_matches_table.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_destroy_matches_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, %struct.SmackMatches* }
%struct.SmackMatches = type { %struct.SmackMatches*, %struct.SmackMatches*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SMACK*)* @destroy_matches_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_matches_table(%struct.SMACK* %0) #0 {
  %2 = alloca %struct.SMACK*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SmackMatches*, align 8
  store %struct.SMACK* %0, %struct.SMACK** %2, align 8
  %5 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %6 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %5, i32 0, i32 1
  %7 = load %struct.SmackMatches*, %struct.SmackMatches** %6, align 8
  %8 = icmp ne %struct.SmackMatches* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %14 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %19 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %18, i32 0, i32 1
  %20 = load %struct.SmackMatches*, %struct.SmackMatches** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %20, i64 %22
  store %struct.SmackMatches* %23, %struct.SmackMatches** %4, align 8
  %24 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %25 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %30 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %29, i32 0, i32 1
  %31 = load %struct.SmackMatches*, %struct.SmackMatches** %30, align 8
  %32 = call i32 @free(%struct.SmackMatches* %31)
  br label %40

33:                                               ; preds = %17
  %34 = load %struct.SmackMatches*, %struct.SmackMatches** %4, align 8
  %35 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %34, i32 0, i32 1
  %36 = load %struct.SmackMatches*, %struct.SmackMatches** %35, align 8
  %37 = icmp eq %struct.SmackMatches* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %46 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %45, i32 0, i32 1
  %47 = load %struct.SmackMatches*, %struct.SmackMatches** %46, align 8
  %48 = call i32 @free(%struct.SmackMatches* %47)
  %49 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %50 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %49, i32 0, i32 1
  store %struct.SmackMatches* null, %struct.SmackMatches** %50, align 8
  br label %51

51:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @free(%struct.SmackMatches*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
