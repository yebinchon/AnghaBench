; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbuildCallback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbuildCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i8*)* @hashbuildCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashbuildCallback(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca [1 x i32], align 4
  %15 = alloca [1 x i32], align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %24 = call i32 @_hash_convert_tuple(i32 %19, i32* %20, i32* %21, i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %63

27:                                               ; preds = %6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %39 = call i32 @_h_spool(i64 %35, i32* %36, i32* %37, i32* %38)
  br label %58

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RelationGetDescr(i32 %41)
  %43 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %45 = call %struct.TYPE_6__* @index_form_tuple(i32 %42, i32* %43, i32* %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %16, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_hash_doinsert(i32 %50, %struct.TYPE_6__* %51, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %57 = call i32 @pfree(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %40, %32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %26
  ret void
}

declare dso_local i32 @_hash_convert_tuple(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_h_spool(i64, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @index_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @_hash_doinsert(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
