; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistcheckpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistcheckpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"index \22%s\22 contains unexpected zero page at block %u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Please REINDEX it.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"index \22%s\22 contains corrupted page at block %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistcheckpage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @BufferGetPage(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @PageIsNew(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @RelationGetRelationName(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BufferGetBlockNumber(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %12, i32 %20)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @PageGetSpecialSize(i32 %23)
  %25 = call i64 @MAXALIGN(i32 4)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @RelationGetRelationName(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BufferGetBlockNumber(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %34)
  %36 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %28, i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @PageGetSpecialSize(i32) #1

declare dso_local i64 @MAXALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
