; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_rowp_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_rowp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_11__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64* }
%struct.TYPE_7__ = type { i64 }

@PASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"php_mysqlnd_rowp_read\00", align 1
@FAIL = common dso_local global i64 0, align 8
@packet_type_to_statistic_byte_count = common dso_local global i32* null, align 8
@PROT_ROW_PACKET = common dso_local global i64 0, align 8
@MYSQLND_HEADER_SIZE = common dso_local global i64 0, align 8
@packet_type_to_statistic_packet_count = common dso_local global i32* null, align 8
@ERROR_MARKER = common dso_local global i64 0, align 8
@EODATA_MARKER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"server_status=%u warning_count=%u\00", align 1
@STAT_ROWS_FETCHED_FROM_SERVER_PS = common dso_local global i32 0, align 4
@STAT_ROWS_FETCHED_FROM_SERVER_NORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Allocating packet->fields\00", align 1
@STAT_ROWS_SKIPPED_PS = common dso_local global i32 0, align 4
@STAT_ROWS_SKIPPED_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*)* @php_mysqlnd_rowp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_mysqlnd_rowp_read(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i64, i64* @PASS, align 8
  store i64 %28, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %29 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 8
  %39 = call i64 @php_mysqlnd_read_row_ex(i32* %30, i32* %31, i32* %32, i32* %33, i32 %36, %struct.TYPE_11__* %38, i64* %13)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* @FAIL, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %179

44:                                               ; preds = %2
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** @packet_type_to_statistic_byte_count, align 8
  %47 = load i64, i64* @PROT_ROW_PACKET, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @MYSQLND_HEADER_SIZE, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %50, %54
  %56 = load i32*, i32** @packet_type_to_statistic_packet_count, align 8
  %57 = load i64, i64* @PROT_ROW_PACKET, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE2(i32* %45, i32 %49, i64 %55, i32 %59, i32 1)
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* @ERROR_MARKER, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %69, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %44
  %77 = load i64, i64* @FAIL, align 8
  store i64 %77, i64* %12, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %13, align 8
  %81 = sub i64 %80, 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @php_mysqlnd_read_error_from_line(i64* %79, i64 %81, i32 %85, i32 4, i32* %88, i32 %92)
  br label %178

94:                                               ; preds = %44
  %95 = load i64, i64* @EODATA_MARKER, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load i64, i64* %13, align 8
  %101 = icmp ult i64 %100, 8
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load i32, i32* @TRUE, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i64*, i64** %11, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %11, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp ugt i64 %108, 1
  br i1 %109, label %110, label %128

110:                                              ; preds = %102
  %111 = load i64*, i64** %11, align 8
  %112 = call i8* @uint2korr(i64* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  store i64* %116, i64** %11, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = call i8* @uint2korr(i64* %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %123, i8* %126)
  br label %128

128:                                              ; preds = %110, %102
  br label %177

129:                                              ; preds = %99, %94
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @STAT_ROWS_FETCHED_FROM_SERVER_PS, align 4
  br label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @STAT_ROWS_FETCHED_FROM_SERVER_NORMAL, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32* %130, i32 %140)
  %142 = load i32, i32* @FALSE, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %139
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %149
  %155 = call i32 @DBG_INF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @mnd_ecalloc(i32 %158, i32 4)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %154, %149
  br label %176

163:                                              ; preds = %139
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @STAT_ROWS_SKIPPED_PS, align 4
  br label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @STAT_ROWS_SKIPPED_NORMAL, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32* %164, i32 %174)
  br label %176

176:                                              ; preds = %173, %162
  br label %177

177:                                              ; preds = %176, %128
  br label %178

178:                                              ; preds = %177, %76
  br label %179

179:                                              ; preds = %178, %43
  %180 = load i64, i64* %12, align 8
  %181 = call i32 @DBG_RETURN(i64 %180)
  %182 = load i64, i64* %3, align 8
  ret i64 %182
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i64 @php_mysqlnd_read_row_ex(i32*, i32*, i32*, i32*, i32, %struct.TYPE_11__*, i64*) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE2(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @php_mysqlnd_read_error_from_line(i64*, i64, i32, i32, i32*, i32) #1

declare dso_local i8* @uint2korr(i64*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i8*, i8*) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC(i32*, i32) #1

declare dso_local i32 @DBG_INF(i8*) #1

declare dso_local i64 @mnd_ecalloc(i32, i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
