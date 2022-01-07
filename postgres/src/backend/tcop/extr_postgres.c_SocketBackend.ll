; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_SocketBackend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_SocketBackend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"unexpected EOF on client connection with an open transaction\00", align 1
@DestNone = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unexpected EOF on client connection\00", align 1
@doing_extended_query_message = common dso_local global i32 0, align 4
@FrontendProtocol = common dso_local global i32 0, align 4
@ignore_till_sync = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid frontend message type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SocketBackend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SocketBackend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @HOLD_CANCEL_INTERRUPTS()
  %6 = call i32 (...) @pq_startmsgread()
  %7 = call i32 (...) @pq_getbyte()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = call i64 (...) @IsTransactionState()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @COMMERROR, align 4
  %16 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @DestNone, align 4
  store i32 %21, i32* @whereToSendOutput, align 4
  %22 = load i32, i32* @DEBUG1, align 4
  %23 = load i32, i32* @ERRCODE_CONNECTION_DOES_NOT_EXIST, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %147

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %124 [
    i32 81, label %31
    i32 70, label %59
    i32 88, label %87
    i32 66, label %88
    i32 67, label %88
    i32 68, label %88
    i32 69, label %88
    i32 72, label %88
    i32 80, label %88
    i32 83, label %100
    i32 100, label %112
    i32 99, label %112
    i32 102, label %112
  ]

31:                                               ; preds = %29
  store i32 0, i32* @doing_extended_query_message, align 4
  %32 = load i32, i32* @FrontendProtocol, align 4
  %33 = call i32 @PG_PROTOCOL_MAJOR(i32 %32)
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pq_getstring(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = call i64 (...) @IsTransactionState()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @COMMERROR, align 4
  %44 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @DestNone, align 4
  store i32 %49, i32* @whereToSendOutput, align 4
  %50 = load i32, i32* @DEBUG1, align 4
  %51 = load i32, i32* @ERRCODE_CONNECTION_DOES_NOT_EXIST, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* @EOF, align 4
  store i32 %56, i32* %2, align 4
  br label %147

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %31
  br label %131

59:                                               ; preds = %29
  store i32 0, i32* @doing_extended_query_message, align 4
  %60 = load i32, i32* @FrontendProtocol, align 4
  %61 = call i32 @PG_PROTOCOL_MAJOR(i32 %60)
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @GetOldFunctionMessage(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = call i64 (...) @IsTransactionState()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @COMMERROR, align 4
  %72 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %83

76:                                               ; preds = %67
  %77 = load i32, i32* @DestNone, align 4
  store i32 %77, i32* @whereToSendOutput, align 4
  %78 = load i32, i32* @DEBUG1, align 4
  %79 = load i32, i32* @ERRCODE_CONNECTION_DOES_NOT_EXIST, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i32, i32* @EOF, align 4
  store i32 %84, i32* %2, align 4
  br label %147

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %59
  br label %131

87:                                               ; preds = %29
  store i32 0, i32* @doing_extended_query_message, align 4
  store i32 0, i32* @ignore_till_sync, align 4
  br label %131

88:                                               ; preds = %29, %29, %29, %29, %29, %29
  store i32 1, i32* @doing_extended_query_message, align 4
  %89 = load i32, i32* @FrontendProtocol, align 4
  %90 = call i32 @PG_PROTOCOL_MAJOR(i32 %89)
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* @FATAL, align 4
  %94 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = call i32 @ereport(i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %92, %88
  br label %131

100:                                              ; preds = %29
  store i32 0, i32* @ignore_till_sync, align 4
  store i32 0, i32* @doing_extended_query_message, align 4
  %101 = load i32, i32* @FrontendProtocol, align 4
  %102 = call i32 @PG_PROTOCOL_MAJOR(i32 %101)
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* @FATAL, align 4
  %106 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = call i32 @ereport(i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %104, %100
  br label %131

112:                                              ; preds = %29, %29, %29
  store i32 0, i32* @doing_extended_query_message, align 4
  %113 = load i32, i32* @FrontendProtocol, align 4
  %114 = call i32 @PG_PROTOCOL_MAJOR(i32 %113)
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* @FATAL, align 4
  %118 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = call i32 @ereport(i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %116, %112
  br label %131

124:                                              ; preds = %29
  %125 = load i32, i32* @FATAL, align 4
  %126 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = call i32 @ereport(i32 %125, i32 %129)
  br label %131

131:                                              ; preds = %124, %123, %111, %99, %87, %86, %58
  %132 = load i32, i32* @FrontendProtocol, align 4
  %133 = call i32 @PG_PROTOCOL_MAJOR(i32 %132)
  %134 = icmp sge i32 %133, 3
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @pq_getmessage(i32 %136, i32 0)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @EOF, align 4
  store i32 %140, i32* %2, align 4
  br label %147

141:                                              ; preds = %135
  br label %144

142:                                              ; preds = %131
  %143 = call i32 (...) @pq_endmsgread()
  br label %144

144:                                              ; preds = %142, %141
  %145 = call i32 (...) @RESUME_CANCEL_INTERRUPTS()
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %139, %83, %55, %27
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @HOLD_CANCEL_INTERRUPTS(...) #1

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @pq_getbyte(...) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_getstring(i32) #1

declare dso_local i32 @GetOldFunctionMessage(i32) #1

declare dso_local i64 @pq_getmessage(i32, i32) #1

declare dso_local i32 @pq_endmsgread(...) #1

declare dso_local i32 @RESUME_CANCEL_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
