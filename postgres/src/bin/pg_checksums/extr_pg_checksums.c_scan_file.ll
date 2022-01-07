; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_checksums/extr_pg_checksums.c_scan_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_checksums/extr_pg_checksums.c_scan_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@mode = common dso_local global i64 0, align 8
@PG_MODE_ENABLE = common dso_local global i64 0, align 8
@PG_MODE_CHECK = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@files = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not read block %u in file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"could not read block %u in file \22%s\22: read %d of %d\00", align 1
@blocks = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i32 0, align 4
@current_size = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_7__* null, align 8
@PG_DATA_CHECKSUM_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"checksum verification failed in file \22%s\22, block %u: calculated checksum %X but block contains %X\00", align 1
@badblocks = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"seek failed for block %u in file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"could not write block %u in file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"could not write block %u in file \22%s\22: wrote %d of %d\00", align 1
@showprogress = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"checksums verified in file \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"checksums enabled in file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @scan_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load i64, i64* @mode, align 8
  %18 = load i64, i64* @PG_MODE_ENABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @mode, align 8
  %22 = load i64, i64* @PG_MODE_CHECK, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i64, i64* @mode, align 8
  %29 = load i64, i64* @PG_MODE_ENABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @O_RDWR, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @O_RDONLY, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @PG_BINARY, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open(i8* %37, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %35
  %49 = load i32, i32* @files, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @files, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %176, %48
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BLCKSZ, align 4
  %56 = call i32 @read(i32 %52, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %179

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @BLCKSZ, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69)
  br label %77

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @BLCKSZ, align 4
  %76 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %67
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %60
  %80 = load i32, i32* @blocks, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @blocks, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = call i64 @PageIsNew(%struct.TYPE_5__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %176

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @RELSEG_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = call i32 @pg_checksum_page(i32 %88, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @current_size, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @current_size, align 4
  %98 = load i64, i64* @mode, align 8
  %99 = load i64, i64* @PG_MODE_CHECK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %86
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ControlFile, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PG_DATA_CHECKSUM_VERSION, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %115, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %113, %107
  %122 = load i32, i32* @badblocks, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @badblocks, align 4
  br label %124

124:                                              ; preds = %121, %101
  br label %170

125:                                              ; preds = %86
  %126 = load i64, i64* @mode, align 8
  %127 = load i64, i64* @PG_MODE_ENABLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @BLCKSZ, align 4
  %135 = sub nsw i32 0, %134
  %136 = load i32, i32* @SEEK_CUR, align 4
  %137 = call i64 @lseek(i32 %133, i32 %135, i32 %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load i32, i32* %8, align 4
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %140, i8* %141)
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %129
  %145 = load i32, i32* %7, align 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BLCKSZ, align 4
  %149 = call i32 @write(i32 %145, i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @BLCKSZ, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %144
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %157, i8* %158)
  br label %166

160:                                              ; preds = %153
  %161 = load i32, i32* %8, align 4
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @BLCKSZ, align 4
  %165 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %161, i8* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %156
  %167 = call i32 @exit(i32 1) #3
  unreachable

168:                                              ; preds = %144
  br label %169

169:                                              ; preds = %168, %125
  br label %170

170:                                              ; preds = %169, %124
  %171 = load i64, i64* @showprogress, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 @progress_report(i32 0)
  br label %175

175:                                              ; preds = %173, %170
  br label %176

176:                                              ; preds = %175, %85
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %51

179:                                              ; preds = %59
  %180 = load i64, i64* @verbose, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %179
  %183 = load i64, i64* @mode, align 8
  %184 = load i64, i64* @PG_MODE_CHECK, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i8*, i8** %3, align 8
  %188 = call i32 @pg_log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %186, %182
  %190 = load i64, i64* @mode, align 8
  %191 = load i64, i64* @PG_MODE_ENABLE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i8*, i8** %3, align 8
  %195 = call i32 @pg_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %193, %189
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @close(i32 %198)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i64 @PageIsNew(%struct.TYPE_5__*) #1

declare dso_local i32 @pg_checksum_page(i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @progress_report(i32) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
