; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_json_object_as_hash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_json_object_as_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8* }

@NAMEDATALEN = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"json object hashtable\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@hash_array_start = common dso_local global i32 0, align 4
@hash_scalar = common dso_local global i32 0, align 4
@hash_object_field_start = common dso_local global i32 0, align 4
@hash_object_field_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*)* @get_json_object_as_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_json_object_as_hash(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @makeJsonLexContextCstringLen(i8* %12, i32 %13, i32 1)
  store i32* %14, i32** %10, align 8
  %15 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 12)
  %16 = load i32, i32* @NAMEDATALEN, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* @CurrentMemoryContext, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HASH_ELEM, align 4
  %22 = load i32, i32* @HASH_CONTEXT, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @hash_create(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 100, %struct.TYPE_9__* %7, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = call i8* @palloc0(i32 24)
  %26 = bitcast i8* %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  %27 = call i8* @palloc0(i32 24)
  %28 = bitcast i8* %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = bitcast %struct.TYPE_8__* %38 to i8*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @hash_array_start, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @hash_scalar, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @hash_object_field_start, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @hash_object_field_end, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = call i32 @pg_parse_json(i32* %54, %struct.TYPE_7__* %55)
  %57 = load i32*, i32** %8, align 8
  ret i32* %57
}

declare dso_local i32* @makeJsonLexContextCstringLen(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @pg_parse_json(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
