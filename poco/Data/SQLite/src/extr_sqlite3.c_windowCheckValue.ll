; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCheckValue.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowCheckValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@windowCheckValue.azErr = internal global [5 x i8*] [i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [53 x i8] c"frame starting offset must be a non-negative integer\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"frame ending offset must be a non-negative integer\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"second argument to nth_value must be a positive integer\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"frame starting offset must be a non-negative number\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"frame ending offset must be a non-negative number\00", align 1
@windowCheckValue.aOp = internal global [5 x i32] [i32 129, i32 129, i32 128, i32 129, i32 129], align 16
@OP_Integer = common dso_local global i32 0, align 4
@WINDOW_STARTING_NUM = common dso_local global i32 0, align 4
@OP_String8 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@P4_STATIC = common dso_local global i32 0, align 4
@SQLITE_AFF_NUMERIC = common dso_local global i32 0, align 4
@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@OP_MustBeInt = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @windowCheckValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCheckValue(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @sqlite3GetVdbe(i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @sqlite3GetTempReg(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ArraySize(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @windowCheckValue.azErr, i64 0, i64 0))
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ false, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @OP_Integer, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @sqlite3VdbeAddOp2(i32* %24, i32 %25, i32 0, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WINDOW_STARTING_NUM, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sqlite3GetTempReg(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @OP_String8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @P4_STATIC, align 4
  %38 = call i32 @sqlite3VdbeAddOp4(i32* %34, i32 %35, i32 0, i32 %36, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @sqlite3VdbeCurrentAddr(i32* %41)
  %43 = add nsw i32 %42, 2
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sqlite3VdbeAddOp3(i32* %39, i32 129, i32 %40, i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @SQLITE_AFF_NUMERIC, align 4
  %48 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @sqlite3VdbeChangeP5(i32* %46, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @VdbeCoverage(i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %58, label %55

55:                                               ; preds = %31
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 4
  br label %58

58:                                               ; preds = %55, %31
  %59 = phi i1 [ true, %31 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 3
  %65 = zext i1 %64 to i32
  %66 = call i32 @VdbeCoverageIf(i32* %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 4
  %70 = zext i1 %69 to i32
  %71 = call i32 @VdbeCoverageIf(i32* %67, i32 %70)
  br label %109

72:                                               ; preds = %20
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @OP_MustBeInt, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @sqlite3VdbeCurrentAddr(i32* %76)
  %78 = add nsw i32 %77, 2
  %79 = call i32 @sqlite3VdbeAddOp2(i32* %73, i32 %74, i32 %75, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @VdbeCoverage(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 2
  br label %90

90:                                               ; preds = %87, %84, %72
  %91 = phi i1 [ true, %84 ], [ true, %72 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @VdbeCoverageIf(i32* %94, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = call i32 @VdbeCoverageIf(i32* %99, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i32
  %108 = call i32 @VdbeCoverageIf(i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %90, %58
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* @windowCheckValue.aOp, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @sqlite3VdbeCurrentAddr(i32* %116)
  %118 = add nsw i32 %117, 2
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @sqlite3VdbeAddOp3(i32* %110, i32 %114, i32 %115, i32 %118, i32 %119)
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @VdbeCoverageNeverNullIf(i32* %121, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 1
  %129 = zext i1 %128 to i32
  %130 = call i32 @VdbeCoverageNeverNullIf(i32* %126, i32 %129)
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i32
  %135 = call i32 @VdbeCoverageNeverNullIf(i32* %131, i32 %134)
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 3
  %139 = zext i1 %138 to i32
  %140 = call i32 @VdbeCoverageNeverNullIf(i32* %136, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 4
  %144 = zext i1 %143 to i32
  %145 = call i32 @VdbeCoverageNeverNullIf(i32* %141, i32 %144)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @sqlite3MayAbort(i32* %146)
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @OP_Halt, align 4
  %150 = load i32, i32* @SQLITE_ERROR, align 4
  %151 = load i32, i32* @OE_Abort, align 4
  %152 = call i32 @sqlite3VdbeAddOp2(i32* %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i8*], [5 x i8*]* @windowCheckValue.azErr, i64 0, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @P4_STATIC, align 4
  %159 = call i32 @sqlite3VdbeAppendP4(i32* %153, i8* %157, i32 %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @sqlite3ReleaseTempReg(i32* %160, i32 %161)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(i8**) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @VdbeCoverageNeverNullIf(i32*, i32) #1

declare dso_local i32 @sqlite3MayAbort(i32*) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
