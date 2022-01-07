; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_execute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }

@OCIAttrGet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"OCI_ATTR_STMT_TYPE\00", align 1
@OCI_HTYPE_STMT = common dso_local global i32 0, align 4
@OCI_ATTR_STMT_TYPE = common dso_local global i32 0, align 4
@OCI_FETCH_NEXT = common dso_local global i32 0, align 4
@OCI_DEFAULT = common dso_local global i64 0, align 8
@OCI_COMMIT_ON_SUCCESS = common dso_local global i64 0, align 8
@OCIStmtExecute = common dso_local global i32 0, align 4
@OCI_STMT_SELECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"ATTR_PARAM_COUNT\00", align 1
@OCI_ATTR_PARAM_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ATTR_ROW_COUNT\00", align 1
@OCI_ATTR_ROW_COUNT = common dso_local global i32 0, align 4
@OCI_STMT_SCROLLABLE_READONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @oci_stmt_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_execute(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @OCIAttrGet, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* @OCI_ATTR_STMT_TYPE, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @STMT_CALL_MSG(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @OCI_FETCH_NEXT, align 4
  %42 = load i64, i64* @OCI_DEFAULT, align 8
  %43 = call i32 @OCIStmtFetch(i32 %37, i32 %40, i32 0, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %34, %29
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* @OCI_COMMIT_ON_SUCCESS, align 8
  store i64 %59, i64* %5, align 8
  br label %62

60:                                               ; preds = %51, %44
  %61 = load i64, i64* @OCI_DEFAULT, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* @OCIStmtExecute, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OCI_STMT_SELECT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %62
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %80, %62
  %87 = phi i1 [ false, %62 ], [ %85, %80 ]
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @STMT_CALL(i32 %63, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %168, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* @OCIAttrGet, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %103 = load i32, i32* @OCI_ATTR_PARAM_COUNT, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @STMT_CALL_MSG(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %6, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = icmp ne %struct.TYPE_12__* %114, null
  br i1 %115, label %116, label %163

116:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %155, %116
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %117
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %133, label %154

133:                                              ; preds = %123
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %143 [
    i32 129, label %142
    i32 128, label %142
  ]

142:                                              ; preds = %133, %133
  br label %153

143:                                              ; preds = %133
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = call i32 @efree(%struct.TYPE_12__* %151)
  br label %153

153:                                              ; preds = %143, %142
  br label %154

154:                                              ; preds = %153, %123
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %117

158:                                              ; preds = %117
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = call i32 @efree(%struct.TYPE_12__* %161)
  br label %163

163:                                              ; preds = %158, %97
  %164 = load i64, i64* %6, align 8
  %165 = call %struct.TYPE_12__* @ecalloc(i64 %164, i32 4)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %167, align 8
  br label %168

168:                                              ; preds = %163, %86
  %169 = load i32, i32* @OCIAttrGet, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %174 = load i32, i32* @OCI_ATTR_ROW_COUNT, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @STMT_CALL_MSG(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  %179 = load i64, i64* %4, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  ret i32 1
}

declare dso_local i32 @STMT_CALL_MSG(i32, i8*, i32) #1

declare dso_local i32 @OCIStmtFetch(i32, i32, i32, i32, i64) #1

declare dso_local i32 @STMT_CALL(i32, i32) #1

declare dso_local i32 @efree(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ecalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
