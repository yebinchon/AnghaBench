; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_get.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/dictionary/extr_dictionary.c_dictionary_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@D_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GET dictionary entry with name '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Not found dictionary entry with name '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Found dictionary entry with name '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dictionary_get(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @D_DICTIONARY, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @debug(i32 %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @dictionary_read_lock(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.TYPE_3__* @dictionary_name_value_index_find_nolock(i32* %12, i8* %13, i32 0)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @dictionary_unlock(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @D_DICTIONARY, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @debug(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i8* null, i8** %3, align 8
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @D_DICTIONARY, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @debug(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @dictionary_read_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @dictionary_name_value_index_find_nolock(i32*, i8*, i32) #1

declare dso_local i32 @dictionary_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
