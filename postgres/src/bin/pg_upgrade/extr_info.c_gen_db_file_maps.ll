; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_gen_db_file_maps.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_gen_db_file_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [9 x i8] c"pg_toast\00", align 1
@old_cluster = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@PG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"Relation names for OID %u in database \22%s\22 do not match: old name \22%s.%s\22, new name \22%s.%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to match up old and new tables in database \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gen_db_file_maps(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @pg_malloc(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %191, %166, %134, %110, %99, %80, %5
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br label %41

41:                                               ; preds = %34, %27
  %42 = phi i1 [ true, %27 ], [ %40, %34 ]
  br i1 %42, label %43, label %209

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %56
  br label %59

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi %struct.TYPE_14__* [ %57, %50 ], [ null, %58 ]
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %16, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %73
  br label %76

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %67
  %77 = phi %struct.TYPE_14__* [ %74, %67 ], [ null, %75 ]
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %17, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = call i32 @report_unmatched_relation(%struct.TYPE_14__* %81, %struct.TYPE_15__* %82, i32 0)
  store i32 0, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %27

86:                                               ; preds = %76
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %88 = icmp ne %struct.TYPE_14__* %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = call i32 @report_unmatched_relation(%struct.TYPE_14__* %96, %struct.TYPE_15__* %97, i32 1)
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %27

102:                                              ; preds = %86
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = call i32 @report_unmatched_relation(%struct.TYPE_14__* %111, %struct.TYPE_15__* %112, i32 0)
  store i32 0, i32* %15, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %27

116:                                              ; preds = %102
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %116
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = call i32 @report_unmatched_relation(%struct.TYPE_14__* %131, %struct.TYPE_15__* %132, i32 1)
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %27

137:                                              ; preds = %116
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strcmp(i8* %141, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %138
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* %150, i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %147
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @old_cluster, i32 0, i32 0), align 4
  %158 = call i32 @GET_MAJOR_VERSION(i32 %157)
  %159 = icmp sge i32 %158, 900
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %160, %156, %138
  %167 = load i32, i32* @PG_WARNING, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @pg_log(i32 %167, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i64 %170, i32 %173, i8* %176, i8* %179, i8* %182, i8* %185)
  store i32 0, i32* %15, align 4
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %27

191:                                              ; preds = %160, %147
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = call i32 @create_rel_filename_map(i8* %192, i8* %193, %struct.TYPE_15__* %194, %struct.TYPE_15__* %195, %struct.TYPE_14__* %196, %struct.TYPE_14__* %197, i32* %201)
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %27

209:                                              ; preds = %41
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @pg_fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %212, %209
  %218 = load i32, i32* %14, align 4
  %219 = load i32*, i32** %8, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32*, i32** %11, align 8
  ret i32* %220
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @report_unmatched_relation(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @pg_log(i32, i8*, i64, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @create_rel_filename_map(i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @pg_fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
