; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_create.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@D_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Creating dictionary.\00", align 1
@DICTIONARY_FLAG_WITH_STATISTICS = common dso_local global i32 0, align 4
@DICTIONARY_FLAG_SINGLE_THREADED = common dso_local global i32 0, align 4
@name_value_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @dictionary_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @D_DICTIONARY, align 4
  %5 = call i32 @debug(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @callocz(i32 1, i32 24)
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @DICTIONARY_FLAG_WITH_STATISTICS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i8* @callocz(i32 1, i32 4)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @DICTIONARY_FLAG_SINGLE_THREADED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = call i8* @callocz(i32 1, i32 4)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @netdata_rwlock_init(i8* %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* @name_value_compare, align 4
  %33 = call i32 @avl_init(i32* %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %37
}

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i8* @callocz(i32, i32) #1

declare dso_local i32 @netdata_rwlock_init(i8*) #1

declare dso_local i32 @avl_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
