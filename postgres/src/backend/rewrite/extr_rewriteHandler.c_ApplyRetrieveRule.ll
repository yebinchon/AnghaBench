; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_ApplyRetrieveRule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_ApplyRetrieveRule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i8*, i64, i8*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, i32*, i32*, i32*, i32*, i8*, i64, i32*, i64, i64, i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_26__ = type { i8*, i32* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"expected just one rule action\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot handle qualified ON SELECT rule\00", align 1
@CMD_INSERT = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"wholerow\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unrecognized commandType: %d\00", align 1
@RTE_SUBQUERY = common dso_local global i32 0, align 4
@PRS2_OLD_VARNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_28__*, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32*)* @ApplyRetrieveRule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @ApplyRetrieveRule(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, i32 %2, %struct.TYPE_27__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @list_length(i8* %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %5
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 (i32, i8*, ...) @elog(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %137

41:                                               ; preds = %35
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CMD_INSERT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %48, %struct.TYPE_28__** %6, align 8
  br label %256

49:                                               ; preds = %41
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMD_UPDATE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CMD_DELETE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.TYPE_24__* @rt_fetch(i32 %62, i8* %65)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %13, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %68 = call i8* @copyObject(%struct.TYPE_24__* %67)
  %69 = bitcast i8* %68 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %69, %struct.TYPE_24__** %16, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %74 = call i8* @lappend(i8* %72, %struct.TYPE_24__* %73)
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @list_length(i8* %79)
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 7
  store i64 0, i64* %84, align 8
  %85 = load i8*, i8** @InvalidOid, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 4
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = call i8* @copyObject(%struct.TYPE_24__* %96)
  %98 = bitcast i8* %97 to %struct.TYPE_24__*
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 5
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %100, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = bitcast %struct.TYPE_24__* %103 to i32*
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ChangeVarNodes(i32* %104, i32 %105, i32 %108, i32 0)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32* @makeWholeRowVar(%struct.TYPE_24__* %110, i32 %111, i32 0, i32 0)
  store i32* %112, i32** %17, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @list_length(i8* %116)
  %118 = add nsw i32 %117, 1
  %119 = call i32 @pstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %120 = call %struct.TYPE_24__* @makeTargetEntry(i32* %113, i32 %118, i32 %119, i32 1)
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %18, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %125 = call i8* @lappend(i8* %123, %struct.TYPE_24__* %124)
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  br label %135

128:                                              ; preds = %55
  %129 = load i32, i32* @ERROR, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 (i32, i8*, ...) @elog(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %128, %61
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %35
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.TYPE_25__* @get_parse_rowmark(%struct.TYPE_28__* %138, i32 %139)
  store %struct.TYPE_25__* %140, %struct.TYPE_25__** %15, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call %struct.TYPE_24__* @linitial(i8* %143)
  %145 = call i8* @copyObject(%struct.TYPE_24__* %144)
  %146 = bitcast i8* %145 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %146, %struct.TYPE_28__** %12, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %149 = icmp ne %struct.TYPE_25__* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @AcquireRewriteLocks(%struct.TYPE_28__* %147, i32 1, i32 %150)
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %153 = icmp ne %struct.TYPE_25__* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %137
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @markQueryForLocking(%struct.TYPE_28__* %155, i32* %159, i32 %162, i32 %165, i32 1)
  br label %167

167:                                              ; preds = %154, %137
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call %struct.TYPE_28__* @fireRIRrules(%struct.TYPE_28__* %168, i32* %169)
  store %struct.TYPE_28__* %170, %struct.TYPE_28__** %12, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = call %struct.TYPE_24__* @rt_fetch(i32 %171, i8* %174)
  store %struct.TYPE_24__* %175, %struct.TYPE_24__** %13, align 8
  %176 = load i32, i32* @RTE_SUBQUERY, align 4
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 13
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 12
  store %struct.TYPE_28__* %179, %struct.TYPE_28__** %181, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %183 = call i32 @RelationIsSecurityView(%struct.TYPE_27__* %182)
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** @InvalidOid, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 10
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 9
  store i64 0, i64* %193, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 8
  store i32* null, i32** %195, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* @PRS2_OLD_VARNO, align 4
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call %struct.TYPE_24__* @rt_fetch(i32 %198, i8* %201)
  store %struct.TYPE_24__* %202, %struct.TYPE_24__** %14, align 8
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %205, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @Assert(i32 %210)
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 7
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 6
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 5
  store i32* %224, i32** %226, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 4
  store i32* %229, i32** %231, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 3
  store i32* %234, i32** %236, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 2
  store i32* %239, i32** %241, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 7
  store i64 0, i64* %243, align 8
  %244 = load i8*, i8** @InvalidOid, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 6
  store i8* %244, i8** %246, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 5
  store i32* null, i32** %248, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 4
  store i32* null, i32** %250, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 3
  store i32* null, i32** %252, align 8
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 2
  store i32* null, i32** %254, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %255, %struct.TYPE_28__** %6, align 8
  br label %256

256:                                              ; preds = %167, %47
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  ret %struct.TYPE_28__* %257
}

declare dso_local i32 @list_length(i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_24__* @rt_fetch(i32, i8*) #1

declare dso_local i8* @copyObject(%struct.TYPE_24__*) #1

declare dso_local i8* @lappend(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @ChangeVarNodes(i32*, i32, i32, i32) #1

declare dso_local i32* @makeWholeRowVar(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @makeTargetEntry(i32*, i32, i32, i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local %struct.TYPE_25__* @get_parse_rowmark(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_24__* @linitial(i8*) #1

declare dso_local i32 @AcquireRewriteLocks(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @markQueryForLocking(%struct.TYPE_28__*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @fireRIRrules(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @RelationIsSecurityView(%struct.TYPE_27__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
