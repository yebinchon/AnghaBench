; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_btree.c_phpdbg_btree_insert_or_update.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_btree.c_phpdbg_btree_insert_or_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32, i8* }

@PHPDBG_BTREE_INSERT = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@PHPDBG_BTREE_UPDATE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phpdbg_btree_insert_or_update(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store %struct.TYPE_7__** %18, %struct.TYPE_7__*** %11, align 8
  br label %19

19:                                               ; preds = %35, %4
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %39

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %29, %30
  %32 = srem i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %33
  store %struct.TYPE_7__** %34, %struct.TYPE_7__*** %11, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %19, label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %97

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PHPDBG_BTREE_INSERT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 24
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_7__* @pemalloc(i32 %55, i32 %58)
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %12, align 8
  br label %61

61:                                               ; preds = %88, %50
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %66, %67
  %69 = srem i32 %68, 2
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %73
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %74, align 8
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %79, %80
  %82 = srem i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %83
  store %struct.TYPE_7__** %84, %struct.TYPE_7__*** %11, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 1
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %12, align 8
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %87, align 8
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %61, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %105

97:                                               ; preds = %39
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @PHPDBG_BTREE_UPDATE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @FAILURE, align 4
  store i32 %103, i32* %5, align 4
  br label %117

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %92
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %111, i8** %115, align 8
  %116 = load i32, i32* @SUCCESS, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %105, %102, %48
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_7__* @pemalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
