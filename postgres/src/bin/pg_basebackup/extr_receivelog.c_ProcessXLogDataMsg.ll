; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ProcessXLogDataMsg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_ProcessXLogDataMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 (i32, i32, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*)*, i32 (i32*, i8*, i32)*, i32 (...)* }

@still_sending = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"streaming header too small: %d\00", align 1
@WalSegSz = common dso_local global i32 0, align 4
@walfile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"received write-ahead log record for offset %u with no file open\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"got WAL data offset %08x, expected %08x\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"could not write %u bytes to WAL file \22%s\22: %s\00", align 1
@current_walfile_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not send copy-end packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i8*, i32, i32*)* @ProcessXLogDataMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessXLogDataMsg(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @still_sending, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %186

20:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 %25, 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %6, align 4
  br label %186

33:                                               ; preds = %20
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 @fe_recvint64(i8* %35)
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WalSegSz, align 4
  %41 = call i32 @XLogSegmentOffset(i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** @walfile, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %6, align 4
  br label %186

50:                                               ; preds = %44
  br label %72

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (i32*)*, i32 (i32*)** %55, align 8
  %57 = load i32*, i32** @walfile, align 8
  %58 = call i32 %56(i32* %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (i32*)*, i32 (i32*)** %66, align 8
  %68 = load i32*, i32** @walfile, align 8
  %69 = call i32 %67(i32* %68)
  %70 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %69)
  store i32 0, i32* %6, align 4
  br label %186

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %184, %72
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %185

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @WalSegSz, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @WalSegSz, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %16, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i32*, i32** @walfile, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @open_walfile(%struct.TYPE_7__* %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %186

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %91
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %106, align 8
  %108 = load i32*, i32** @walfile, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %16, align 4
  %117 = call i32 %107(i32* %108, i8* %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %102
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @current_walfile_name, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32 (...)*, i32 (...)** %126, align 8
  %128 = call i32 (...) %127()
  %129 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i32 %128)
  store i32 0, i32* %6, align 4
  br label %186

130:                                              ; preds = %102
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @WalSegSz, align 4
  %147 = call i32 @XLogSegmentOffset(i32 %145, i32 %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %130
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @close_walfile(%struct.TYPE_7__* %150, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %186

156:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  %157 = load i32, i32* @still_sending, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %156
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %161, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 %162(i32 %164, i32 %167, i32 1)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %159
  %171 = load i32*, i32** %7, align 8
  %172 = call i64 @PQputCopyEnd(i32* %171, i32* null)
  %173 = icmp sle i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i32*, i32** %7, align 8
  %176 = call i64 @PQflush(i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174, %170
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @PQerrorMessage(i32* %179)
  %181 = call i32 (i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  store i32 0, i32* %6, align 4
  br label %186

182:                                              ; preds = %174
  store i32 0, i32* @still_sending, align 4
  store i32 1, i32* %6, align 4
  br label %186

183:                                              ; preds = %159, %156
  br label %184

184:                                              ; preds = %183, %130
  br label %76

185:                                              ; preds = %76
  store i32 1, i32* %6, align 4
  br label %186

186:                                              ; preds = %185, %182, %178, %155, %120, %100, %61, %47, %30, %19
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @pg_log_error(i8*, i32, ...) #1

declare dso_local i32 @fe_recvint64(i8*) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @open_walfile(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @close_walfile(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @PQputCopyEnd(i32*, i32*) #1

declare dso_local i64 @PQflush(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
