; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_pgss_ProcessUtility.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_pgss_ProcessUtility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }

@pgss_track_utility = common dso_local global i64 0, align 8
@ExecuteStmt = common dso_local global i32 0, align 4
@PrepareStmt = common dso_local global i32 0, align 4
@DeallocateStmt = common dso_local global i32 0, align 4
@pgBufferUsage = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@nested_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"COPY \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32, i32, i32*, i32*, i8*)* @pgss_ProcessUtility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgss_ProcessUtility(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i64, i64* @pgss_track_utility, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %166

26:                                               ; preds = %7
  %27 = call i64 (...) @pgss_enabled()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %166

29:                                               ; preds = %26
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* @ExecuteStmt, align 4
  %32 = call i32 @IsA(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %166, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* @PrepareStmt, align 4
  %37 = call i32 @IsA(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %166, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* @DeallocateStmt, align 4
  %42 = call i32 @IsA(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %166, label %44

44:                                               ; preds = %39
  %45 = bitcast %struct.TYPE_9__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast (%struct.TYPE_9__* @pgBufferUsage to i8*), i64 88, i1 false)
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @INSTR_TIME_SET_CURRENT(i32 %46)
  %48 = load i32, i32* @nested_level, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @nested_level, align 4
  %50 = call i32 (...) @PG_TRY()
  br i1 true, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @prev_ProcessUtility(%struct.TYPE_8__* %52, i8* %53, i32 %54, i32 %55, i32* %56, i32* %57, i8* %58)
  br label %69

60:                                               ; preds = %44
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @standard_ProcessUtility(%struct.TYPE_8__* %61, i8* %62, i32 %63, i32 %64, i32* %65, i32* %66, i8* %67)
  br label %69

69:                                               ; preds = %60, %51
  %70 = call i32 (...) @PG_FINALLY()
  %71 = load i32, i32* @nested_level, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @nested_level, align 4
  %73 = call i32 (...) @PG_END_TRY()
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @INSTR_TIME_SET_CURRENT(i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @INSTR_TIME_SUBTRACT(i32 %76, i32 %77)
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %69
  %82 = load i8*, i8** %14, align 8
  %83 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  %88 = call i64 @pg_strtouint64(i8* %87, i32* null, i32 10)
  store i64 %88, i64* %18, align 8
  br label %90

89:                                               ; preds = %81, %69
  store i64 0, i64* %18, align 8
  br label %90

90:                                               ; preds = %89, %85
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 11), align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %91, %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 11
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 10), align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 10
  store i64 %99, i64* %100, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 9), align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %101, %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 8), align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %106, %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 8
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 7), align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %111, %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  store i64 %114, i64* %115, align 8
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 6), align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %116, %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  store i64 %119, i64* %120, align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 5), align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %121, %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 4), align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %126, %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i64 %129, i64* %130, align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 3), align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %131, %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i64 %134, i64* %135, align 8
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 2), align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %136, %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i64 %139, i64* %140, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 1), align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @INSTR_TIME_SUBTRACT(i32 %144, i32 %146)
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pgBufferUsage, i32 0, i32 0), align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @INSTR_TIME_SUBTRACT(i32 %151, i32 %153)
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @INSTR_TIME_GET_MILLISEC(i32 %162)
  %164 = load i64, i64* %18, align 8
  %165 = call i32 @pgss_store(i8* %155, i32 0, i32 %158, i32 %161, i32 %163, i64 %164, %struct.TYPE_9__* %20, i32* null)
  br label %186

166:                                              ; preds = %39, %34, %29, %26, %7
  br i1 true, label %167, label %176

167:                                              ; preds = %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @prev_ProcessUtility(%struct.TYPE_8__* %168, i8* %169, i32 %170, i32 %171, i32* %172, i32* %173, i8* %174)
  br label %185

176:                                              ; preds = %166
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32*, i32** %12, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = call i32 @standard_ProcessUtility(%struct.TYPE_8__* %177, i8* %178, i32 %179, i32 %180, i32* %181, i32* %182, i8* %183)
  br label %185

185:                                              ; preds = %176, %167
  br label %186

186:                                              ; preds = %185, %90
  ret void
}

declare dso_local i64 @pgss_enabled(...) #1

declare dso_local i32 @IsA(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @prev_ProcessUtility(%struct.TYPE_8__*, i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @standard_ProcessUtility(%struct.TYPE_8__*, i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @pg_strtouint64(i8*, i32*, i32) #1

declare dso_local i32 @pgss_store(i8*, i32, i32, i32, i32, i64, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @INSTR_TIME_GET_MILLISEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
