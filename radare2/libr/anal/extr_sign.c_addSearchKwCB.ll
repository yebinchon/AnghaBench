; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_addSearchKwCB.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_addSearchKwCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.ctxAddSearchKwCB = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cannot find bytes for this signature: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @addSearchKwCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addSearchKwCB(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ctxAddSearchKwCB*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ctxAddSearchKwCB*
  store %struct.ctxAddSearchKwCB* %12, %struct.ctxAddSearchKwCB** %6, align 8
  %13 = load %struct.ctxAddSearchKwCB*, %struct.ctxAddSearchKwCB** %6, align 8
  %14 = getelementptr inbounds %struct.ctxAddSearchKwCB, %struct.ctxAddSearchKwCB* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @eprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 1, i32* %3, align 4
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.ctxAddSearchKwCB*, %struct.ctxAddSearchKwCB** %6, align 8
  %28 = getelementptr inbounds %struct.ctxAddSearchKwCB, %struct.ctxAddSearchKwCB* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ctxAddSearchKwCB*, %struct.ctxAddSearchKwCB** %6, align 8
  %36 = getelementptr inbounds %struct.ctxAddSearchKwCB, %struct.ctxAddSearchKwCB* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %72

40:                                               ; preds = %31, %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call %struct.TYPE_9__* @r_sign_item_dup(%struct.TYPE_9__* %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %10, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = call i32 @r_list_append(i32 %48, %struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = bitcast %struct.TYPE_9__* %63 to i8*
  %65 = call i32* @r_search_keyword_new(i32 %53, i64 %56, i32 %59, i64 %62, i8* %64)
  store i32* %65, i32** %9, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @r_search_kw_add(i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %45, %40
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %39, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @r_sign_item_dup(%struct.TYPE_9__*) #1

declare dso_local i32 @r_list_append(i32, %struct.TYPE_9__*) #1

declare dso_local i32* @r_search_keyword_new(i32, i64, i32, i64, i8*) #1

declare dso_local i32 @r_search_kw_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
