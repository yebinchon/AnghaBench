; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_execTuplesHashPrepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_execTuplesHashPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not find hash function for hash operator %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execTuplesHashPrepare(i32 %0, i64* %1, i64** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @palloc(i32 %17)
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64**, i64*** %7, align 8
  store i64* %19, i64** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i64 @palloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32**, i32*** %8, align 8
  store i32* %26, i32** %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %66, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @get_opcode(i64 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @get_op_hash_functions(i64 %40, i64* %12, i64* %13)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load i64**, i64*** %7, align 8
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @fmgr_info(i64 %59, i32* %64)
  br label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %28

69:                                               ; preds = %28
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @get_opcode(i64) #1

declare dso_local i32 @get_op_hash_functions(i64, i64*, i64*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fmgr_info(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
