; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_GenerateQualCollation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_GenerateQualCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_QUOTED_NAME_LEN = common dso_local global i32 0, align 4
@COLLOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cache lookup failed for collation %u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ri_GenerateQualCollation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri_GenerateQualCollation(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OidIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load i32, i32* @COLLOID, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @SearchSysCache1(i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GETSTRUCT(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %6, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @NameStr(i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @get_namespace_name(i32 %41)
  %43 = call i32 @quoteOneName(i8* %14, i8* %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @appendStringInfo(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @quoteOneName(i8* %14, i8* %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @appendStringInfo(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ReleaseSysCache(i32 %50)
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %31, %18
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @SearchSysCache1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i64 @GETSTRUCT(i32) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i32 @quoteOneName(i8*, i8*) #2

declare dso_local i8* @get_namespace_name(i32) #2

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #2

declare dso_local i32 @ReleaseSysCache(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
