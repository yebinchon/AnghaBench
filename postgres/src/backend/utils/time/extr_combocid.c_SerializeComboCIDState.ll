; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_combocid.c_SerializeComboCIDState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_combocid.c_SerializeComboCIDState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usedComboCids = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"not enough space to serialize ComboCID state\00", align 1
@comboCids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SerializeComboCIDState(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @usedComboCids, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32 %6, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 4
  %11 = load i32, i32* @usedComboCids, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = icmp ugt i8* %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @usedComboCids, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i32, i32* @comboCids, align 4
  %35 = load i32, i32* @usedComboCids, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i8* %33, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
