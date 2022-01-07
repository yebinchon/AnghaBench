; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_reindex_one_database.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_reindex_one_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32* }

@.str = private unnamed_addr constant [71 x i8] c"cannot use the \22%s\22 option on server versions older than PostgreSQL %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"concurrently\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"cannot reindex system catalogs concurrently, skipping all\00", align 1
@CancelRequested = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_18__*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32)* @reindex_one_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reindex_one_database(i8* %0, i32 %1, %struct.TYPE_18__* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_19__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp sgt i32 %35, 1
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %27, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %28, align 8
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %29, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load i8*, i8** %20, align 8
  %46 = load i32, i32* %21, align 4
  %47 = call i32* @connectDatabase(i8* %40, i8* %41, i8* %42, i8* %43, i32 %44, i8* %45, i32 %46, i32 0, i32 0)
  store i32* %47, i32** %25, align 8
  %48 = load i32, i32* %23, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %12
  %51 = load i32*, i32** %25, align 8
  %52 = call i32 @PQserverVersion(i32* %51)
  %53 = icmp slt i32 %52, 120000
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @PQfinish(i32* %55)
  %57 = call i32 @pg_log_error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %50, %12
  %60 = load i32, i32* %27, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %29, align 4
  switch i32 %63, label %79 [
    i32 132, label %64
    i32 129, label %64
    i32 131, label %74
    i32 130, label %74
    i32 128, label %74
  ]

64:                                               ; preds = %62, %62
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %66 = icmp eq %struct.TYPE_18__* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = call %struct.TYPE_18__* @pg_malloc0(i32 8)
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %28, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %71 = load i32*, i32** %25, align 8
  %72 = call i8* @PQdb(i32* %71)
  %73 = call i32 @simple_string_list_append(%struct.TYPE_18__* %70, i8* %72)
  br label %79

74:                                               ; preds = %62, %62, %62
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  br label %79

79:                                               ; preds = %62, %74, %64
  br label %123

80:                                               ; preds = %59
  %81 = load i32, i32* %29, align 4
  switch i32 %81, label %122 [
    i32 132, label %82
    i32 130, label %105
    i32 129, label %119
    i32 131, label %119
    i32 128, label %121
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* %23, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @pg_log_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %95

87:                                               ; preds = %82
  %88 = load i32*, i32** %25, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = call i8* @PQdb(i32* %89)
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %23, align 4
  %94 = call i32 @run_reindex_command(i32* %88, i32 129, i8* %90, i32 %91, i32 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %87, %85
  %96 = load i32*, i32** %25, align 8
  %97 = load i32, i32* %29, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %99 = load i32, i32* %21, align 4
  %100 = call %struct.TYPE_18__* @get_parallel_object_list(i32* %96, i32 %97, %struct.TYPE_18__* %98, i32 %99)
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %28, align 8
  store i32 128, i32* %29, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %102 = icmp eq %struct.TYPE_18__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %223

104:                                              ; preds = %95
  br label %122

105:                                              ; preds = %80
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %107 = icmp ne %struct.TYPE_18__* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = load i32*, i32** %25, align 8
  %111 = load i32, i32* %29, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %113 = load i32, i32* %21, align 4
  %114 = call %struct.TYPE_18__* @get_parallel_object_list(i32* %110, i32 %111, %struct.TYPE_18__* %112, i32 %113)
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %28, align 8
  store i32 128, i32* %29, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %116 = icmp eq %struct.TYPE_18__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %223

118:                                              ; preds = %105
  br label %122

119:                                              ; preds = %80, %80
  %120 = call i32 @Assert(i32 0)
  br label %122

121:                                              ; preds = %80
  br label %122

122:                                              ; preds = %80, %121, %119, %118, %104
  br label %123

123:                                              ; preds = %122, %79
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %26, align 8
  br label %127

127:                                              ; preds = %138, %123
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %129 = icmp ne %struct.TYPE_17__* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, i32* %32, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %32, align 4
  %133 = load i32, i32* %32, align 4
  %134 = load i32, i32* %24, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %142

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  store %struct.TYPE_17__* %141, %struct.TYPE_17__** %26, align 8
  br label %127

142:                                              ; preds = %136, %127
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %32, align 4
  %145 = call i32 @Min(i32 %143, i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp sgt i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %151 = icmp ne %struct.TYPE_18__* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @Assert(i32 %152)
  %154 = load i8*, i8** %13, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = load i32, i32* %19, align 4
  %159 = load i8*, i8** %20, align 8
  %160 = load i32, i32* %21, align 4
  %161 = load i32*, i32** %25, align 8
  %162 = load i32, i32* %24, align 4
  %163 = call %struct.TYPE_19__* @ParallelSlotsSetup(i8* %154, i8* %155, i8* %156, i8* %157, i32 %158, i8* %159, i32 %160, i32* %161, i32 %162)
  store %struct.TYPE_19__* %163, %struct.TYPE_19__** %30, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  store %struct.TYPE_17__* %166, %struct.TYPE_17__** %26, align 8
  br label %167

167:                                              ; preds = %194, %142
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %33, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %34, align 8
  %171 = load i64, i64* @CancelRequested, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 1, i32* %31, align 4
  br label %204

174:                                              ; preds = %167
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %176 = load i32, i32* %24, align 4
  %177 = call %struct.TYPE_19__* @ParallelSlotsGetIdle(%struct.TYPE_19__* %175, i32 %176)
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %34, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %179 = icmp ne %struct.TYPE_19__* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %174
  store i32 1, i32* %31, align 4
  br label %204

181:                                              ; preds = %174
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %29, align 4
  %186 = load i8*, i8** %33, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %23, align 4
  %190 = call i32 @run_reindex_command(i32* %184, i32 %185, i8* %186, i32 %187, i32 %188, i32 %189, i32 1)
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  store %struct.TYPE_17__* %193, %struct.TYPE_17__** %26, align 8
  br label %194

194:                                              ; preds = %181
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %196 = icmp ne %struct.TYPE_17__* %195, null
  br i1 %196, label %167, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @ParallelSlotsWaitCompletion(%struct.TYPE_19__* %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store i32 1, i32* %31, align 4
  br label %203

203:                                              ; preds = %202, %197
  br label %204

204:                                              ; preds = %203, %180, %173
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %207 = icmp ne %struct.TYPE_18__* %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %210 = call i32 @simple_string_list_destroy(%struct.TYPE_18__* %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %212 = call i32 @pg_free(%struct.TYPE_18__* %211)
  br label %213

213:                                              ; preds = %208, %204
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %215 = load i32, i32* %24, align 4
  %216 = call i32 @ParallelSlotsTerminate(%struct.TYPE_19__* %214, i32 %215)
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %218 = call i32 @pfree(%struct.TYPE_19__* %217)
  %219 = load i32, i32* %31, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = call i32 @exit(i32 1) #3
  unreachable

223:                                              ; preds = %103, %117, %213
  ret void
}

declare dso_local i32* @connectDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PQserverVersion(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_18__* @pg_malloc0(i32) #1

declare dso_local i32 @simple_string_list_append(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @PQdb(i32*) #1

declare dso_local i32 @pg_log_warning(i8*) #1

declare dso_local i32 @run_reindex_command(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @get_parallel_object_list(i32*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local %struct.TYPE_19__* @ParallelSlotsSetup(i8*, i8*, i8*, i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ParallelSlotsGetIdle(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ParallelSlotsWaitCompletion(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @simple_string_list_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @pg_free(%struct.TYPE_18__*) #1

declare dso_local i32 @ParallelSlotsTerminate(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
