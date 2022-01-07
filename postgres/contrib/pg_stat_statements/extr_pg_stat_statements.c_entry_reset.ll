; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_reset.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }

@pgss = common dso_local global %struct.TYPE_8__* null, align 8
@pgss_hash = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"pg_stat_statements must be loaded via shared_preload_libraries\00", align 1
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@PGSS_TEXT_FILE = common dso_local global i32 0, align 4
@PG_BINARY_W = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not truncate file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @entry_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entry_reset(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgss, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @pgss_hash, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgss, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LW_EXCLUSIVE, align 4
  %29 = call i32 @LWLockAcquire(i32 %27, i32 %28)
  %30 = load i32, i32* @pgss_hash, align 4
  %31 = call i64 @hash_get_num_entries(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @UINT64CONST(i32 0)
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @pgss_hash, align 4
  %49 = load i32, i32* @HASH_REMOVE, align 4
  %50 = call i64 @hash_search(i32 %48, %struct.TYPE_6__* %12, i32 %49, i32* null)
  %51 = inttoptr i64 %50 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %54, %41
  br label %130

58:                                               ; preds = %37, %34, %24
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @UINT64CONST(i32 0)
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %64, %61, %58
  %69 = load i32, i32* @pgss_hash, align 4
  %70 = call i32 @hash_seq_init(i32* %7, i32 %69)
  br label %71

71:                                               ; preds = %112, %68
  %72 = call %struct.TYPE_7__* @hash_seq_search(i32* %7)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %8, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %113

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %77, %74
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %87, %84
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %97, %94
  %105 = load i32, i32* @pgss_hash, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* @HASH_REMOVE, align 4
  %109 = call i64 @hash_search(i32 %105, %struct.TYPE_6__* %107, i32 %108, i32* null)
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %104, %97, %87, %77
  br label %71

113:                                              ; preds = %71
  br label %129

114:                                              ; preds = %64
  %115 = load i32, i32* @pgss_hash, align 4
  %116 = call i32 @hash_seq_init(i32* %7, i32 %115)
  br label %117

117:                                              ; preds = %120, %114
  %118 = call %struct.TYPE_7__* @hash_seq_search(i32* %7)
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %8, align 8
  %119 = icmp ne %struct.TYPE_7__* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* @pgss_hash, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* @HASH_REMOVE, align 4
  %125 = call i64 @hash_search(i32 %121, %struct.TYPE_6__* %123, i32 %124, i32* null)
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %117

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %57
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %165

135:                                              ; preds = %130
  %136 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %137 = load i32, i32* @PG_BINARY_W, align 4
  %138 = call i32* @AllocateFile(i32 %136, i32 %137)
  store i32* %138, i32** %9, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, i32* @LOG, align 4
  %143 = call i32 (...) @errcode_for_file_access()
  %144 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %145 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = call i32 @ereport(i32 %142, i32 %145)
  br label %161

147:                                              ; preds = %135
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @fileno(i32* %148)
  %150 = call i64 @ftruncate(i32 %149, i32 0)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i32, i32* @LOG, align 4
  %154 = call i32 (...) @errcode_for_file_access()
  %155 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %156 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = call i32 @ereport(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @FreeFile(i32* %159)
  br label %161

161:                                              ; preds = %158, %141
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgss, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = call i32 (...) @record_gc_qtexts()
  br label %165

165:                                              ; preds = %161, %134
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgss, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @LWLockRelease(i32 %168)
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @hash_get_num_entries(i32) #1

declare dso_local i64 @UINT64CONST(i32) #1

declare dso_local i64 @hash_search(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @hash_seq_search(i32*) #1

declare dso_local i32* @AllocateFile(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @FreeFile(i32*) #1

declare dso_local i32 @record_gc_qtexts(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
