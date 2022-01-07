; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_getConnectionByName.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_getConnectionByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@remoteConnHash = common dso_local global i64 0, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @getConnectionByName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getConnectionByName(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @remoteConnHash, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @createConnHash()
  store i64 %9, i64* @remoteConnHash, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @pstrdup(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @truncate_identifier(i8* %13, i32 %15, i32 0)
  %17 = load i64, i64* @remoteConnHash, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @HASH_FIND, align 4
  %20 = call i64 @hash_search(i64 %17, i8* %18, i32 %19, i32* null)
  %21 = inttoptr i64 %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %2, align 8
  br label %29

28:                                               ; preds = %10
  store i32* null, i32** %2, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i64 @createConnHash(...) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @truncate_identifier(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @hash_search(i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
