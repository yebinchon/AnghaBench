; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveExprStep.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveExprStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { %struct.TYPE_45__*, %struct.TYPE_42__ }
%struct.TYPE_45__ = type { i64, %struct.TYPE_37__*, i64, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, i32, %struct.TYPE_46__*, %struct.TYPE_44__*, i32, %struct.TYPE_45__* }
%struct.TYPE_44__ = type { i64, i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i32 }
%struct.TYPE_36__ = type { i32, i32, i32, %struct.TYPE_36__*, %struct.TYPE_41__, %struct.TYPE_36__*, i32, %struct.TYPE_38__, i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { %struct.TYPE_36__* }
%struct.TYPE_38__ = type { i8* }
%struct.TYPE_34__ = type { i32, i8*, i32 }

@EP_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"the \22.\22 operator\00", align 1
@NC_IdxExpr = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_FUNC_UNLIKELY = common dso_local global i32 0, align 4
@EP_Unlikely = common dso_local global i32 0, align 4
@EP_Skip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"second argument to likelihood() must be a constant between 0.0 and 1.0\00", align 1
@SQLITE_FUNCTION = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DENY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"not authorized to use function: %s\00", align 1
@TK_NULL = common dso_local global i32 0, align 4
@SQLITE_FUNC_CONSTANT = common dso_local global i32 0, align 4
@SQLITE_FUNC_SLOCHNG = common dso_local global i32 0, align 4
@EP_ConstFunc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"non-deterministic functions\00", align 1
@NC_PartIdx = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"misuse of aggregate function %.*s()\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"no such function: %.*s\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"wrong number of arguments to function %.*s()\00", align 1
@TK_AGG_FUNCTION = common dso_local global i32 0, align 4
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@NC_MinMaxAgg = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"subqueries\00", align 1
@NC_IsCheck = common dso_local global i32 0, align 4
@EP_VarSelect = common dso_local global i32 0, align 4
@NC_VarSelect = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"row value misused\00", align 1
@WRC_Abort = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@SQLITE_AFF_INTEGER = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_43__*, %struct.TYPE_36__*)* @resolveExprStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveExprStep(%struct.TYPE_43__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_43__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_46__*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_46__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  %28 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_46__*, %struct.TYPE_46__** %30, align 8
  store %struct.TYPE_46__* %31, %struct.TYPE_46__** %6, align 8
  %32 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %33 = icmp ne %struct.TYPE_46__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %37, align 8
  store %struct.TYPE_45__* %38, %struct.TYPE_45__** %7, align 8
  %39 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %40 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_45__*, %struct.TYPE_45__** %41, align 8
  %43 = icmp eq %struct.TYPE_45__* %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %47 = load i32, i32* @EP_Resolved, align 4
  %48 = call i64 @ExprHasProperty(%struct.TYPE_36__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @WRC_Prune, align 4
  store i32 %51, i32* %3, align 4
  br label %690

52:                                               ; preds = %2
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %54 = load i32, i32* @EP_Resolved, align 4
  %55 = call i32 @ExprSetProperty(%struct.TYPE_36__* %53, i32 %54)
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %57, align 8
  %59 = icmp ne %struct.TYPE_44__* %58, null
  br i1 %59, label %60, label %110

60:                                               ; preds = %52
  %61 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_44__*, %struct.TYPE_44__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %110

67:                                               ; preds = %60
  %68 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_44__*, %struct.TYPE_44__** %69, align 8
  store %struct.TYPE_44__* %70, %struct.TYPE_44__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %106, %67
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %71
  %80 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %80, i32 0, i32 2
  %82 = load %struct.SrcList_item*, %struct.SrcList_item** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %82, i64 %84
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %90, i32 0, i32 2
  %92 = load %struct.SrcList_item*, %struct.SrcList_item** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %92, i64 %94
  %96 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br label %102

102:                                              ; preds = %89, %79
  %103 = phi i1 [ false, %79 ], [ %101, %89 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %71

109:                                              ; preds = %71
  br label %110

110:                                              ; preds = %109, %60, %52
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %672 [
    i32 137, label %114
    i32 143, label %114
    i32 140, label %181
    i32 129, label %482
    i32 141, label %482
    i32 136, label %489
    i32 128, label %541
    i32 144, label %550
    i32 142, label %550
    i32 131, label %550
    i32 132, label %550
    i32 133, label %550
    i32 138, label %550
    i32 139, label %550
    i32 135, label %550
    i32 134, label %550
  ]

114:                                              ; preds = %110, %110
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 137
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %10, align 8
  br label %173

124:                                              ; preds = %114
  %125 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %126 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %127 = load i32, i32* @NC_IdxExpr, align 4
  %128 = call i32 @notValid(%struct.TYPE_45__* %125, %struct.TYPE_46__* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %130, align 8
  store %struct.TYPE_36__* %131, %struct.TYPE_36__** %13, align 8
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 137
  br i1 %135, label %136, label %147

136:                                              ; preds = %124
  store i8* null, i8** %12, align 8
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %11, align 8
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %10, align 8
  br label %172

147:                                              ; preds = %124
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 143
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %12, align 8
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %11, align 8
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** %10, align 8
  br label %172

172:                                              ; preds = %147, %136
  br label %173

173:                                              ; preds = %172, %119
  %174 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %180 = call i32 @lookupName(%struct.TYPE_45__* %174, i8* %175, i8* %176, i8* %177, %struct.TYPE_46__* %178, %struct.TYPE_36__* %179)
  store i32 %180, i32* %3, align 4
  br label %690

181:                                              ; preds = %110
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %184, align 8
  store %struct.TYPE_35__* %185, %struct.TYPE_35__** %14, align 8
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %187 = icmp ne %struct.TYPE_35__* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  br label %193

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i32 [ %191, %188 ], [ 0, %192 ]
  store i32 %194, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %195 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %196, align 8
  %198 = call i32 @ENC(%struct.TYPE_37__* %197)
  store i32 %198, i32* %22, align 4
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %200 = load i32, i32* @EP_xIsSelect, align 4
  %201 = call i64 @ExprHasProperty(%struct.TYPE_36__* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 7
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %20, align 8
  %210 = load i8*, i8** %20, align 8
  %211 = call i32 @sqlite3Strlen30(i8* %210)
  store i32 %211, i32* %19, align 4
  %212 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %213, align 8
  %215 = load i8*, i8** %20, align 8
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %22, align 4
  %218 = call %struct.TYPE_34__* @sqlite3FindFunction(%struct.TYPE_37__* %214, i8* %215, i32 %216, i32 %217, i32 0)
  store %struct.TYPE_34__* %218, %struct.TYPE_34__** %21, align 8
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %220 = icmp eq %struct.TYPE_34__* %219, null
  br i1 %220, label %221, label %233

221:                                              ; preds = %193
  %222 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %223, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call %struct.TYPE_34__* @sqlite3FindFunction(%struct.TYPE_37__* %224, i8* %225, i32 -2, i32 %226, i32 0)
  store %struct.TYPE_34__* %227, %struct.TYPE_34__** %21, align 8
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %229 = icmp eq %struct.TYPE_34__* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  store i32 1, i32* %16, align 4
  br label %232

231:                                              ; preds = %221
  store i32 1, i32* %17, align 4
  br label %232

232:                                              ; preds = %231, %230
  br label %345

233:                                              ; preds = %193
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %18, align 4
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @SQLITE_FUNC_UNLIKELY, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %288

245:                                              ; preds = %233
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %247 = load i32, i32* @EP_Unlikely, align 4
  %248 = load i32, i32* @EP_Skip, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @ExprSetProperty(%struct.TYPE_36__* %246, i32 %249)
  %251 = load i32, i32* %15, align 4
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %253, label %275

253:                                              ; preds = %245
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_40__*, %struct.TYPE_40__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %258, align 8
  %260 = call i32 @exprProbability(%struct.TYPE_36__* %259)
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %253
  %268 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %269 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %268, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %270 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %267, %253
  br label %287

275:                                              ; preds = %245
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp eq i32 %281, 117
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 8388608, i32 125829120
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %275, %274
  br label %288

288:                                              ; preds = %287, %233
  %289 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %290 = load i32, i32* @SQLITE_FUNCTION, align 4
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @sqlite3AuthCheck(%struct.TYPE_45__* %289, i32 %290, i32 0, i8* %293, i32 0)
  store i32 %294, i32* %23, align 4
  %295 = load i32, i32* %23, align 4
  %296 = load i32, i32* @SQLITE_OK, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %317

298:                                              ; preds = %288
  %299 = load i32, i32* %23, align 4
  %300 = load i32, i32* @SQLITE_DENY, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %306)
  %308 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %302, %298
  %313 = load i32, i32* @TK_NULL, align 4
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* @WRC_Prune, align 4
  store i32 %316, i32* %3, align 4
  br label %690

317:                                              ; preds = %288
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @SQLITE_FUNC_CONSTANT, align 4
  %322 = load i32, i32* @SQLITE_FUNC_SLOCHNG, align 4
  %323 = or i32 %321, %322
  %324 = and i32 %320, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %317
  %327 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %328 = load i32, i32* @EP_ConstFunc, align 4
  %329 = call i32 @ExprSetProperty(%struct.TYPE_36__* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %317
  %331 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @SQLITE_FUNC_CONSTANT, align 4
  %335 = and i32 %333, %334
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %330
  %338 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %340 = load i32, i32* @NC_IdxExpr, align 4
  %341 = load i32, i32* @NC_PartIdx, align 4
  %342 = or i32 %340, %341
  %343 = call i32 @notValid(%struct.TYPE_45__* %338, %struct.TYPE_46__* %339, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %337, %330
  br label %345

345:                                              ; preds = %344, %232
  %346 = load i32, i32* %18, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %364

348:                                              ; preds = %345
  %349 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @NC_AllowAgg, align 4
  %353 = and i32 %351, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %348
  %356 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %357 = load i32, i32* %19, align 4
  %358 = load i8*, i8** %20, align 8
  %359 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %357, i8* %358)
  %360 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 8
  store i32 0, i32* %18, align 4
  br label %398

364:                                              ; preds = %348, %345
  %365 = load i32, i32* %16, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %384

367:                                              ; preds = %364
  %368 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %367
  %376 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %377 = load i32, i32* %19, align 4
  %378 = load i8*, i8** %20, align 8
  %379 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %376, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %377, i8* %378)
  %380 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  br label %397

384:                                              ; preds = %367, %364
  %385 = load i32, i32* %17, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %396

387:                                              ; preds = %384
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %389 = load i32, i32* %19, align 4
  %390 = load i8*, i8** %20, align 8
  %391 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %388, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %389, i8* %390)
  %392 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %387, %384
  br label %397

397:                                              ; preds = %396, %375
  br label %398

398:                                              ; preds = %397, %355
  %399 = load i32, i32* %18, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %398
  %402 = load i32, i32* @NC_AllowAgg, align 4
  %403 = xor i32 %402, -1
  %404 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %401, %398
  %409 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %411 = call i32 @sqlite3WalkExprList(%struct.TYPE_43__* %409, %struct.TYPE_35__* %410)
  %412 = load i32, i32* %18, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %480

414:                                              ; preds = %408
  %415 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  store %struct.TYPE_46__* %415, %struct.TYPE_46__** %24, align 8
  %416 = load i32, i32* @TK_AGG_FUNCTION, align 4
  %417 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %417, i32 0, i32 0
  store i32 %416, i32* %418, align 8
  %419 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %419, i32 0, i32 6
  store i32 0, i32* %420, align 8
  br label %421

421:                                              ; preds = %434, %414
  %422 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %423 = icmp ne %struct.TYPE_46__* %422, null
  br i1 %423, label %424, label %432

424:                                              ; preds = %421
  %425 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %426 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %427 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %426, i32 0, i32 3
  %428 = load %struct.TYPE_44__*, %struct.TYPE_44__** %427, align 8
  %429 = call i32 @sqlite3FunctionUsesThisSrc(%struct.TYPE_36__* %425, %struct.TYPE_44__* %428)
  %430 = icmp ne i32 %429, 0
  %431 = xor i1 %430, true
  br label %432

432:                                              ; preds = %424, %421
  %433 = phi i1 [ false, %421 ], [ %431, %424 ]
  br i1 %433, label %434, label %442

434:                                              ; preds = %432
  %435 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %436, align 8
  %439 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %440 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_46__*, %struct.TYPE_46__** %440, align 8
  store %struct.TYPE_46__* %441, %struct.TYPE_46__** %24, align 8
  br label %421

442:                                              ; preds = %432
  %443 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %444 = icmp ne %struct.TYPE_34__* %443, null
  %445 = zext i1 %444 to i32
  %446 = call i32 @assert(i32 %445)
  %447 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %448 = icmp ne %struct.TYPE_46__* %447, null
  br i1 %448, label %449, label %474

449:                                              ; preds = %442
  %450 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %451 = load i32, i32* @NC_MinMaxAgg, align 4
  %452 = icmp eq i32 %450, %451
  %453 = zext i1 %452 to i32
  %454 = call i32 @assert(i32 %453)
  %455 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %456 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  %461 = zext i1 %460 to i32
  %462 = call i32 @testcase(i32 %461)
  %463 = load i32, i32* @NC_HasAgg, align 4
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %468 = and i32 %466, %467
  %469 = or i32 %463, %468
  %470 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %471 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  br label %474

474:                                              ; preds = %449, %442
  %475 = load i32, i32* @NC_AllowAgg, align 4
  %476 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = or i32 %478, %475
  store i32 %479, i32* %477, align 8
  br label %480

480:                                              ; preds = %474, %408
  %481 = load i32, i32* @WRC_Prune, align 4
  store i32 %481, i32* %3, align 4
  br label %690

482:                                              ; preds = %110, %110
  %483 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 141
  %487 = zext i1 %486 to i32
  %488 = call i32 @testcase(i32 %487)
  br label %489

489:                                              ; preds = %110, %482
  %490 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = icmp eq i32 %492, 136
  %494 = zext i1 %493 to i32
  %495 = call i32 @testcase(i32 %494)
  %496 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %497 = load i32, i32* @EP_xIsSelect, align 4
  %498 = call i64 @ExprHasProperty(%struct.TYPE_36__* %496, i32 %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %540

500:                                              ; preds = %489
  %501 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  store i32 %503, i32* %25, align 4
  %504 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %505 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %506 = load i32, i32* @NC_IsCheck, align 4
  %507 = load i32, i32* @NC_PartIdx, align 4
  %508 = or i32 %506, %507
  %509 = load i32, i32* @NC_IdxExpr, align 4
  %510 = or i32 %508, %509
  %511 = call i32 @notValid(%struct.TYPE_45__* %504, %struct.TYPE_46__* %505, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %510)
  %512 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %513 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %513, i32 0, i32 4
  %515 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @sqlite3WalkSelect(%struct.TYPE_43__* %512, i32 %516)
  %518 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %519 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* %25, align 4
  %522 = icmp sge i32 %520, %521
  %523 = zext i1 %522 to i32
  %524 = call i32 @assert(i32 %523)
  %525 = load i32, i32* %25, align 4
  %526 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = icmp ne i32 %525, %528
  br i1 %529, label %530, label %539

530:                                              ; preds = %500
  %531 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %532 = load i32, i32* @EP_VarSelect, align 4
  %533 = call i32 @ExprSetProperty(%struct.TYPE_36__* %531, i32 %532)
  %534 = load i32, i32* @NC_VarSelect, align 4
  %535 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = or i32 %537, %534
  store i32 %538, i32* %536, align 8
  br label %539

539:                                              ; preds = %530, %500
  br label %540

540:                                              ; preds = %539, %489
  br label %672

541:                                              ; preds = %110
  %542 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %543 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %544 = load i32, i32* @NC_IsCheck, align 4
  %545 = load i32, i32* @NC_PartIdx, align 4
  %546 = or i32 %544, %545
  %547 = load i32, i32* @NC_IdxExpr, align 4
  %548 = or i32 %546, %547
  %549 = call i32 @notValid(%struct.TYPE_45__* %542, %struct.TYPE_46__* %543, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %548)
  br label %672

550:                                              ; preds = %110, %110, %110, %110, %110, %110, %110, %110, %110
  %551 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %551, i32 0, i32 1
  %553 = load %struct.TYPE_37__*, %struct.TYPE_37__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %550
  br label %672

558:                                              ; preds = %550
  %559 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %559, i32 0, i32 5
  %561 = load %struct.TYPE_36__*, %struct.TYPE_36__** %560, align 8
  %562 = icmp ne %struct.TYPE_36__* %561, null
  %563 = zext i1 %562 to i32
  %564 = call i32 @assert(i32 %563)
  %565 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %565, i32 0, i32 5
  %567 = load %struct.TYPE_36__*, %struct.TYPE_36__** %566, align 8
  %568 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_36__* %567)
  store i32 %568, i32* %26, align 4
  %569 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp eq i32 %571, 144
  br i1 %572, label %573, label %599

573:                                              ; preds = %558
  %574 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %574, i32 0, i32 4
  %576 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %575, i32 0, i32 0
  %577 = load %struct.TYPE_35__*, %struct.TYPE_35__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %577, i32 0, i32 1
  %579 = load %struct.TYPE_40__*, %struct.TYPE_40__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %579, i64 0
  %581 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %580, i32 0, i32 0
  %582 = load %struct.TYPE_36__*, %struct.TYPE_36__** %581, align 8
  %583 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_36__* %582)
  store i32 %583, i32* %27, align 4
  %584 = load i32, i32* %27, align 4
  %585 = load i32, i32* %26, align 4
  %586 = icmp eq i32 %584, %585
  br i1 %586, label %587, label %598

587:                                              ; preds = %573
  %588 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %589 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %588, i32 0, i32 4
  %590 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %589, i32 0, i32 0
  %591 = load %struct.TYPE_35__*, %struct.TYPE_35__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %591, i32 0, i32 1
  %593 = load %struct.TYPE_40__*, %struct.TYPE_40__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %593, i64 1
  %595 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %594, i32 0, i32 0
  %596 = load %struct.TYPE_36__*, %struct.TYPE_36__** %595, align 8
  %597 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_36__* %596)
  store i32 %597, i32* %27, align 4
  br label %598

598:                                              ; preds = %587, %573
  br label %610

599:                                              ; preds = %558
  %600 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %600, i32 0, i32 3
  %602 = load %struct.TYPE_36__*, %struct.TYPE_36__** %601, align 8
  %603 = icmp ne %struct.TYPE_36__* %602, null
  %604 = zext i1 %603 to i32
  %605 = call i32 @assert(i32 %604)
  %606 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %606, i32 0, i32 3
  %608 = load %struct.TYPE_36__*, %struct.TYPE_36__** %607, align 8
  %609 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_36__* %608)
  store i32 %609, i32* %27, align 4
  br label %610

610:                                              ; preds = %599, %598
  %611 = load i32, i32* %26, align 4
  %612 = load i32, i32* %27, align 4
  %613 = icmp ne i32 %611, %612
  br i1 %613, label %614, label %671

614:                                              ; preds = %610
  %615 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %616 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = icmp eq i32 %617, 142
  %619 = zext i1 %618 to i32
  %620 = call i32 @testcase(i32 %619)
  %621 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %622 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = icmp eq i32 %623, 131
  %625 = zext i1 %624 to i32
  %626 = call i32 @testcase(i32 %625)
  %627 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %628 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = icmp eq i32 %629, 132
  %631 = zext i1 %630 to i32
  %632 = call i32 @testcase(i32 %631)
  %633 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %634 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = icmp eq i32 %635, 133
  %637 = zext i1 %636 to i32
  %638 = call i32 @testcase(i32 %637)
  %639 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %640 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 8
  %642 = icmp eq i32 %641, 138
  %643 = zext i1 %642 to i32
  %644 = call i32 @testcase(i32 %643)
  %645 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %646 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = icmp eq i32 %647, 139
  %649 = zext i1 %648 to i32
  %650 = call i32 @testcase(i32 %649)
  %651 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %652 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = icmp eq i32 %653, 135
  %655 = zext i1 %654 to i32
  %656 = call i32 @testcase(i32 %655)
  %657 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = icmp eq i32 %659, 134
  %661 = zext i1 %660 to i32
  %662 = call i32 @testcase(i32 %661)
  %663 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %664 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = icmp eq i32 %665, 144
  %667 = zext i1 %666 to i32
  %668 = call i32 @testcase(i32 %667)
  %669 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %670 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %669, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %671

671:                                              ; preds = %614, %610
  br label %672

672:                                              ; preds = %110, %671, %557, %541, %540
  %673 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %674 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %673, i32 0, i32 2
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %684, label %677

677:                                              ; preds = %672
  %678 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %679 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %678, i32 0, i32 1
  %680 = load %struct.TYPE_37__*, %struct.TYPE_37__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %680, i32 0, i32 0
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %677, %672
  %685 = load i32, i32* @WRC_Abort, align 4
  br label %688

686:                                              ; preds = %677
  %687 = load i32, i32* @WRC_Continue, align 4
  br label %688

688:                                              ; preds = %686, %684
  %689 = phi i32 [ %685, %684 ], [ %687, %686 ]
  store i32 %689, i32* %3, align 4
  br label %690

690:                                              ; preds = %688, %480, %312, %173, %50
  %691 = load i32, i32* %3, align 4
  ret i32 %691
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @notValid(%struct.TYPE_45__*, %struct.TYPE_46__*, i8*, i32) #1

declare dso_local i32 @lookupName(%struct.TYPE_45__*, i8*, i8*, i8*, %struct.TYPE_46__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ENC(%struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local %struct.TYPE_34__* @sqlite3FindFunction(%struct.TYPE_37__*, i8*, i32, i32, i32) #1

declare dso_local i32 @exprProbability(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_45__*, i8*, ...) #1

declare dso_local i32 @sqlite3AuthCheck(%struct.TYPE_45__*, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3WalkExprList(%struct.TYPE_43__*, %struct.TYPE_35__*) #1

declare dso_local i32 @sqlite3FunctionUsesThisSrc(%struct.TYPE_36__*, %struct.TYPE_44__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3WalkSelect(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
