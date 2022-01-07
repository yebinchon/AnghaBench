; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyGetData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyGetData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 (i8*, i32, i32)*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not read from COPY file: %m\00", align 1
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"unexpected EOF on client connection with an open transaction\00", align 1
@EOF = common dso_local global i32 0, align 4
@ERRCODE_QUERY_CANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"COPY from stdin failed: %s\00", align 1
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"unexpected message type 0x%02X during COPY from stdin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i32)* @CopyGetData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyGetData(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %178 [
    i32 130, label %16
    i32 128, label %40
    i32 129, label %53
    i32 131, label %170
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @fread(i8* %17, i32 1, i32 %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ferror(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 (...) @errcode_for_file_access()
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %178

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pq_getbytes(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %10, align 4
  br label %178

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %152, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %57, %54
  %68 = phi i1 [ false, %57 ], [ false, %54 ], [ %66, %61 ]
  br i1 %68, label %69, label %169

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %134, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %75, %80
  br i1 %81, label %82, label %135

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %126, %82
  %84 = call i32 (...) @HOLD_CANCEL_INTERRUPTS()
  %85 = call i32 (...) @pq_startmsgread()
  %86 = call i32 (...) @pq_getbyte()
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @EOF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32 @ereport(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = call i32 @pq_getmessage(%struct.TYPE_7__* %99, i32 0)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i32 @ereport(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %96
  %109 = call i32 (...) @RESUME_CANCEL_INTERRUPTS()
  %110 = load i32, i32* %12, align 4
  switch i32 %110, label %127 [
    i32 100, label %111
    i32 99, label %112
    i32 102, label %116
    i32 72, label %126
    i32 83, label %126
  ]

111:                                              ; preds = %108
  br label %134

112:                                              ; preds = %108
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %180

116:                                              ; preds = %108
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = call i32 @pq_getmsgstring(%struct.TYPE_7__* %122)
  %124 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = call i32 @ereport(i32 %117, i32 %124)
  br label %134

126:                                              ; preds = %108, %108
  br label %83

127:                                              ; preds = %108
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = call i32 @ereport(i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %127, %116, %111
  br label %70

135:                                              ; preds = %70
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %140, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %150, %135
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @pq_copymsgbytes(%struct.TYPE_7__* %155, i8* %156, i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8* %162, i8** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %54

169:                                              ; preds = %67
  br label %178

170:                                              ; preds = %4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %172, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 %173(i8* %174, i32 %175, i32 %176)
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %4, %170, %169, %51, %39
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %112
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @ferror(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pq_getbytes(i8*, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @HOLD_CANCEL_INTERRUPTS(...) #1

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @pq_getbyte(...) #1

declare dso_local i32 @pq_getmessage(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @RESUME_CANCEL_INTERRUPTS(...) #1

declare dso_local i32 @pq_getmsgstring(%struct.TYPE_7__*) #1

declare dso_local i32 @pq_copymsgbytes(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
