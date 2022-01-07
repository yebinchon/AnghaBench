; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_SendFunctionResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_SendFunctionResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FrontendProtocol = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported format code: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @SendFunctionResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendFunctionResult(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @FrontendProtocol, align 4
  %18 = call i32 @PG_PROTOCOL_MAJOR(i32 %17)
  %19 = icmp sge i32 %18, 3
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = call i32 @pq_beginmessage(i32* %10, i8 signext 86)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @pq_sendint32(i32* %10, i32 -1)
  br label %29

29:                                               ; preds = %27, %24
  br label %82

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @pq_sendbyte(i32* %10, i8 signext 71)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @getTypeOutputInfo(i32 %39, i32* %11, i32* %12)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @OidOutputFunctionCall(i32 %41, i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @pq_sendcountedtext(i32* %10, i8* %44, i32 %46, i32 0)
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @pfree(i8* %48)
  br label %81

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @getTypeBinaryOutputInfo(i32 %54, i32* %14, i32* %15)
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @OidSendFunctionCall(i32 %56, i32 %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @VARSIZE(i8* %59)
  %61 = load i32, i32* @VARHDRSZ, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @pq_sendint32(i32* %10, i32 %62)
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @VARDATA(i8* %64)
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @VARSIZE(i8* %66)
  %68 = load i32, i32* @VARHDRSZ, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @pq_sendbytes(i32* %10, i32 %65, i32 %69)
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @pfree(i8* %71)
  br label %80

73:                                               ; preds = %50
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %73, %53
  br label %81

81:                                               ; preds = %80, %38
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 @pq_sendbyte(i32* %10, i8 signext 48)
  br label %87

87:                                               ; preds = %85, %82
  %88 = call i32 @pq_endmessage(i32* %10)
  ret void
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32 @pq_sendbyte(i32*, i8 signext) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @pq_sendcountedtext(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @getTypeBinaryOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidSendFunctionCall(i32, i32) #1

declare dso_local i32 @VARSIZE(i8*) #1

declare dso_local i32 @pq_sendbytes(i32*, i32, i32) #1

declare dso_local i32 @VARDATA(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
