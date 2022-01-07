; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_extract_jsp_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_extract_jsp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }

@JSONPATH_LAX = common dso_local global i32 0, align 4
@jsonb_path_ops__add_path_item = common dso_local global i32 0, align 4
@jsonb_path_ops__extract_nodes = common dso_local global i32 0, align 4
@jsonb_ops__add_path_item = common dso_local global i32 0, align 4
@jsonb_ops__extract_nodes = common dso_local global i32 0, align 4
@JsonbJsonpathExistsStrategyNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i64, i32, i32*, i64**)* @extract_jsp_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extract_jsp_query(%struct.TYPE_14__* %0, i64 %1, i32 %2, i32* %3, i64** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64** %4, i64*** %11, align 8
  %17 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @JSONPATH_LAX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i32, i32* @jsonb_path_ops__add_path_item, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @jsonb_path_ops__extract_nodes, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %39

34:                                               ; preds = %5
  %35 = load i32, i32* @jsonb_ops__add_path_item, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @jsonb_ops__extract_nodes, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = call i32 @jspInit(i32* %13, %struct.TYPE_14__* %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @JsonbJsonpathExistsStrategyNumber, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @extract_jsp_path_expr(%struct.TYPE_13__* %12, i32 %47, i32* %13, i32* null)
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @extract_jsp_bool_expr(%struct.TYPE_13__* %12, i32 %51, i32* %13, i32 0)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32* [ %48, %45 ], [ %52, %49 ]
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  store i32 0, i32* %58, align 4
  store i32* null, i32** %6, align 8
  br label %83

59:                                               ; preds = %53
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @emit_jsp_gin_entries(i32* %60, %struct.TYPE_15__* %16)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32* null, i32** %6, align 8
  br label %83

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 8, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64* @palloc0(i32 %74)
  %76 = load i64**, i64*** %11, align 8
  store i64* %75, i64** %76, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = load i64**, i64*** %11, align 8
  %80 = load i64*, i64** %79, align 8
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %69, %68, %57
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @jspInit(i32*, %struct.TYPE_14__*) #2

declare dso_local i32* @extract_jsp_path_expr(%struct.TYPE_13__*, i32, i32*, i32*) #2

declare dso_local i32* @extract_jsp_bool_expr(%struct.TYPE_13__*, i32, i32*, i32) #2

declare dso_local i32 @emit_jsp_gin_entries(i32*, %struct.TYPE_15__*) #2

declare dso_local i64* @palloc0(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
