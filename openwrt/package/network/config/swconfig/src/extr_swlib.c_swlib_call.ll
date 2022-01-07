; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_call.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type opaque
%struct.nl_cb = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL_AUTO_PID = common dso_local global i32 0, align 4
@NL_AUTO_SEQ = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"nl_cb_alloc failed.\0A\00", align 1
@handle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"nl_send_auto_complete failed: %d\0A\00", align 1
@NL_CB_VALID = common dso_local global i32 0, align 4
@NL_CB_ACK = common dso_local global i32 0, align 4
@wait_handler = common dso_local global i32 0, align 4
@NL_CB_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)*, i8*)* @swlib_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swlib_call(i32 %0, i32 (%struct.nl_msg*, i8*)* %1, i32 (%struct.nl_msg*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.nl_msg*, i8*)*, align 8
  %7 = alloca i32 (%struct.nl_msg*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nl_msg*, align 8
  %10 = alloca %struct.nl_cb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 (%struct.nl_msg*, i8*)* %1, i32 (%struct.nl_msg*, i8*)** %6, align 8
  store i32 (%struct.nl_msg*, i8*)* %2, i32 (%struct.nl_msg*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.nl_cb* null, %struct.nl_cb** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %14, %struct.nl_msg** %9, align 8
  %15 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %16 = icmp ne %struct.nl_msg* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %4
  %22 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %7, align 8
  %23 = icmp ne i32 (%struct.nl_msg*, i8*)* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @NLM_F_DUMP, align 4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %30 = load i32, i32* @NL_AUTO_PID, align 4
  %31 = load i32, i32* @NL_AUTO_SEQ, align 4
  %32 = load i32, i32* @family, align 4
  %33 = call i32 @genl_family_get_id(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @genlmsg_put(%struct.nl_msg* %29, i32 %30, i32 %31, i32 %33, i32 0, i32 %34, i32 %35, i32 0)
  %37 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %7, align 8
  %38 = icmp ne i32 (%struct.nl_msg*, i8*)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %7, align 8
  %41 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 %40(%struct.nl_msg* %41, i8* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %118

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* @NL_CB_CUSTOM, align 4
  %50 = call %struct.nl_cb* @nl_cb_alloc(i32 %49)
  store %struct.nl_cb* %50, %struct.nl_cb** %10, align 8
  %51 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %52 = icmp ne %struct.nl_cb* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %48
  %58 = load i32, i32* @handle, align 4
  %59 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %60 = call i32 @nl_send_auto_complete(i32 %58, %struct.nl_msg* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %111

67:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  %68 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %6, align 8
  %69 = icmp ne i32 (%struct.nl_msg*, i8*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %72 = load i32, i32* @NL_CB_VALID, align 4
  %73 = load i32, i32* @NL_CB_CUSTOM, align 4
  %74 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %6, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = call i32 @nl_cb_set(%struct.nl_cb* %71, i32 %72, i32 %73, i32 (%struct.nl_msg*, i8*)* %74, i32* %76)
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %7, align 8
  %80 = icmp ne i32 (%struct.nl_msg*, i8*)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %83 = load i32, i32* @NL_CB_ACK, align 4
  %84 = load i32, i32* @NL_CB_CUSTOM, align 4
  %85 = load i32, i32* @wait_handler, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32 (%struct.nl_msg*, i8*)*
  %88 = call i32 @nl_cb_set(%struct.nl_cb* %82, i32 %83, i32 %84, i32 (%struct.nl_msg*, i8*)* %87, i32* %11)
  br label %97

89:                                               ; preds = %78
  %90 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %91 = load i32, i32* @NL_CB_FINISH, align 4
  %92 = load i32, i32* @NL_CB_CUSTOM, align 4
  %93 = load i32, i32* @wait_handler, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i32 (%struct.nl_msg*, i8*)*
  %96 = call i32 @nl_cb_set(%struct.nl_cb* %90, i32 %91, i32 %92, i32 (%struct.nl_msg*, i8*)* %95, i32* %11)
  br label %97

97:                                               ; preds = %89, %81
  %98 = load i32, i32* @handle, align 4
  %99 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %100 = call i32 @nl_recvmsgs(i32 %98, %struct.nl_cb* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %111

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @handle, align 4
  %109 = call i32 @nl_wait_for_ack(i32 %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %103, %63
  %112 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %113 = icmp ne %struct.nl_cb* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.nl_cb*, %struct.nl_cb** %10, align 8
  %116 = call i32 @nl_cb_put(%struct.nl_cb* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %46
  %119 = load %struct.nl_msg*, %struct.nl_msg** %9, align 8
  %120 = call i32 @nlmsg_free(%struct.nl_msg* %119)
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @genlmsg_put(%struct.nl_msg*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_family_get_id(i32) #1

declare dso_local %struct.nl_cb* @nl_cb_alloc(i32) #1

declare dso_local i32 @nl_send_auto_complete(i32, %struct.nl_msg*) #1

declare dso_local i32 @nl_cb_set(%struct.nl_cb*, i32, i32, i32 (%struct.nl_msg*, i8*)*, i32*) #1

declare dso_local i32 @nl_recvmsgs(i32, %struct.nl_cb*) #1

declare dso_local i32 @nl_wait_for_ack(i32) #1

declare dso_local i32 @nl_cb_put(%struct.nl_cb*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
