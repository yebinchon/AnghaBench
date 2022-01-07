; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_codeAttach.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_codeAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@OP_Function0 = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_Expire = common dso_local global i32 0, align 4
@SQLITE_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*)* @codeAttach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeAttach(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_27__* %2, %struct.TYPE_28__* %3, %struct.TYPE_28__* %4, %struct.TYPE_28__* %5, %struct.TYPE_28__* %6) #0 {
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %5, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %6, %struct.TYPE_28__** %14, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %18, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %150

29:                                               ; preds = %7
  %30 = call i32 @memset(%struct.TYPE_26__* %16, i32 0, i32 8)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %32, align 8
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %35 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %34)
  store i32 %35, i32* %15, align 4
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %40 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %39)
  store i32 %40, i32* %15, align 4
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %45 = call i32 @resolveAttachExpr(%struct.TYPE_26__* %16, %struct.TYPE_28__* %44)
  store i32 %45, i32* %15, align 4
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %29
  br label %150

48:                                               ; preds = %42
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %50 = icmp ne %struct.TYPE_28__* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TK_STRING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %20, align 8
  br label %63

62:                                               ; preds = %51
  store i8* null, i8** %20, align 8
  br label %63

63:                                               ; preds = %62, %57
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @sqlite3AuthCheck(%struct.TYPE_25__* %64, i32 %65, i8* %66, i32 0, i32 0)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %150

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %75 = call i32* @sqlite3GetVdbe(%struct.TYPE_25__* %74)
  store i32* %75, i32** %17, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %77 = call i32 @sqlite3GetTempRange(%struct.TYPE_25__* %76, i32 4)
  store i32 %77, i32* %19, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %78, %struct.TYPE_28__* %79, i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %82, %struct.TYPE_28__* %83, i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 2
  %91 = call i32 @sqlite3ExprCode(%struct.TYPE_25__* %87, %struct.TYPE_28__* %88, i32 %90)
  %92 = load i32*, i32** %17, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %73
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %94, %73
  %100 = phi i1 [ true, %73 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %17, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %149

105:                                              ; preds = %99
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* @OP_Function0, align 4
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 3
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 3
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = bitcast %struct.TYPE_27__* %116 to i8*
  %118 = load i32, i32* @P4_FUNCDEF, align 4
  %119 = call i32 @sqlite3VdbeAddOp4(i32* %106, i32 %107, i32 0, i32 %113, i32 %115, i8* %117, i32 %118)
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %133, label %124

124:                                              ; preds = %105
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 255
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %128, %131
  br label %133

133:                                              ; preds = %124, %105
  %134 = phi i1 [ true, %105 ], [ %132, %124 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** %17, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @sqlite3VdbeChangeP5(i32* %137, i32 %140)
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* @OP_Expire, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SQLITE_ATTACH, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @sqlite3VdbeAddOp1(i32* %142, i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %133, %99
  br label %150

150:                                              ; preds = %149, %71, %47, %28
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %153 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %151, %struct.TYPE_28__* %152)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %156 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %154, %struct.TYPE_28__* %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %159 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %157, %struct.TYPE_28__* %158)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @resolveAttachExpr(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3AuthCheck(%struct.TYPE_25__*, i32, i8*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
