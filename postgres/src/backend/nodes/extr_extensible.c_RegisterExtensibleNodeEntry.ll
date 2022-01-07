; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_extensible.c_RegisterExtensibleNodeEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_extensible.c_RegisterExtensibleNodeEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i64 }

@EXTNODENAME_MAX_LEN = common dso_local global i64 0, align 8
@HASH_ELEM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"extensible node name is too long\00", align 1
@HASH_ENTER = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"extensible node type \22%s\22 already exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i8*, i8*)* @RegisterExtensibleNodeEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RegisterExtensibleNodeEntry(i32** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = call i32 @memset(%struct.TYPE_5__* %11, i32 0, i32 16)
  %17 = load i64, i64* @EXTNODENAME_MAX_LEN, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @HASH_ELEM, align 4
  %22 = call i32* @hash_create(i8* %20, i32 100, %struct.TYPE_5__* %11, i32 %21)
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  br label %24

24:                                               ; preds = %15, %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i64, i64* @EXTNODENAME_MAX_LEN, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @HASH_ENTER, align 4
  %37 = call i64 @hash_search(i32* %34, i8* %35, i32 %36, i32* %10)
  %38 = inttoptr i64 %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %32
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
