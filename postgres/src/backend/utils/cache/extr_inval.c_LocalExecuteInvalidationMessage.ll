; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_LocalExecuteInvalidationMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_LocalExecuteInvalidationMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RELCACHECALLBACK = type { i32, i32 (i32, i64)* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@SHAREDINVALCATALOG_ID = common dso_local global i64 0, align 8
@SHAREDINVALRELCACHE_ID = common dso_local global i64 0, align 8
@relcache_callback_count = common dso_local global i32 0, align 4
@relcache_callback_list = common dso_local global %struct.RELCACHECALLBACK* null, align 8
@SHAREDINVALSMGR_ID = common dso_local global i64 0, align 8
@SHAREDINVALRELMAP_ID = common dso_local global i64 0, align 8
@SHAREDINVALSNAPSHOT_ID = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unrecognized SI message ID: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LocalExecuteInvalidationMessage(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.RELCACHECALLBACK*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MyDatabaseId, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @InvalidOid, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %17, %10
  %25 = call i32 (...) @InvalidateCatalogSnapshot()
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SysCacheInvalidate(i32 %29, i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @CallSyscacheCallbacks(i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %24, %17
  br label %224

45:                                               ; preds = %1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SHAREDINVALCATALOG_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MyDatabaseId, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @InvalidOid, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %51
  %66 = call i32 (...) @InvalidateCatalogSnapshot()
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CatalogCacheFlushCatalog(i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  br label %223

73:                                               ; preds = %45
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SHAREDINVALRELCACHE_ID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %134

79:                                               ; preds = %73
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MyDatabaseId, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @InvalidOid, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %86, %79
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @InvalidOid, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 (...) @RelationCacheInvalidate()
  br label %108

102:                                              ; preds = %93
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @RelationCacheInvalidateEntry(i64 %106)
  br label %108

108:                                              ; preds = %102, %100
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @relcache_callback_count, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** @relcache_callback_list, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %114, i64 %116
  store %struct.RELCACHECALLBACK* %117, %struct.RELCACHECALLBACK** %4, align 8
  %118 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** %4, align 8
  %119 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %118, i32 0, i32 1
  %120 = load i32 (i32, i64)*, i32 (i32, i64)** %119, align 8
  %121 = load %struct.RELCACHECALLBACK*, %struct.RELCACHECALLBACK** %4, align 8
  %122 = getelementptr inbounds %struct.RELCACHECALLBACK, %struct.RELCACHECALLBACK* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 %120(i32 %123, i64 %127)
  br label %129

129:                                              ; preds = %113
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %109

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %86
  br label %222

134:                                              ; preds = %73
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SHAREDINVALSMGR_ID, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %134
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 %149, 16
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = or i32 %150, %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = bitcast %struct.TYPE_16__* %5 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = call i32 @smgrclosenode(i64 %159)
  br label %221

161:                                              ; preds = %134
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SHAREDINVALRELMAP_ID, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %161
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @InvalidOid, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = call i32 @RelationMapInvalidate(i32 1)
  br label %186

176:                                              ; preds = %167
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MyDatabaseId, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = call i32 @RelationMapInvalidate(i32 0)
  br label %185

185:                                              ; preds = %183, %176
  br label %186

186:                                              ; preds = %185, %174
  br label %220

187:                                              ; preds = %161
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SHAREDINVALSNAPSHOT_ID, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @InvalidOid, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = call i32 (...) @InvalidateCatalogSnapshot()
  br label %212

202:                                              ; preds = %193
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @MyDatabaseId, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = call i32 (...) @InvalidateCatalogSnapshot()
  br label %211

211:                                              ; preds = %209, %202
  br label %212

212:                                              ; preds = %211, %200
  br label %219

213:                                              ; preds = %187
  %214 = load i32, i32* @FATAL, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @elog(i32 %214, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %217)
  br label %219

219:                                              ; preds = %213, %212
  br label %220

220:                                              ; preds = %219, %186
  br label %221

221:                                              ; preds = %220, %140
  br label %222

222:                                              ; preds = %221, %133
  br label %223

223:                                              ; preds = %222, %72
  br label %224

224:                                              ; preds = %223, %44
  ret void
}

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

declare dso_local i32 @SysCacheInvalidate(i32, i32) #1

declare dso_local i32 @CallSyscacheCallbacks(i32, i32) #1

declare dso_local i32 @CatalogCacheFlushCatalog(i32) #1

declare dso_local i32 @RelationCacheInvalidate(...) #1

declare dso_local i32 @RelationCacheInvalidateEntry(i64) #1

declare dso_local i32 @smgrclosenode(i64) #1

declare dso_local i32 @RelationMapInvalidate(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
