; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_post_command.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_post_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@COAP_RSPCODE_BAD_REQUEST = common dso_local global i32 0, align 4
@COAP_CONTENTTYPE_TEXT_PLAIN = common dso_local global i32 0, align 4
@LUA_MAXINPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0AResult(if any):\0A\00", align 1
@LUA_TASK_PRIO = common dso_local global i32 0, align 4
@LUA_PROCESS_LINE_SIG = common dso_local global i32 0, align 4
@COAP_RSPCODE_CONTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32)* @handle_post_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_post_command(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* @COAP_RSPCODE_BAD_REQUEST, align 4
  %29 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %30 = call i32 @coap_make_response(i32* %22, %struct.TYPE_6__* %23, i32* null, i32 0, i32 %24, i32 %25, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %67

31:                                               ; preds = %6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load i32, i32* @LUA_MAXINPUT, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = load i32, i32* @LUA_MAXINPUT, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @coap_buffer_to_string(i8* %41, i32 %42, %struct.TYPE_7__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = call i32 @strlen(i8* %41)
  %49 = call i64 @lua_put_line(i8* %41, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = call i32 @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @LUA_TASK_PRIO, align 4
  %54 = load i32, i32* @LUA_PROCESS_LINE_SIG, align 4
  %55 = call i32 @system_os_post(i32 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %51, %47, %37
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* @COAP_RSPCODE_CONTENT, align 4
  %64 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %65 = call i32 @coap_make_response(i32* %57, %struct.TYPE_6__* %58, i32* null, i32 0, i32 %59, i32 %60, i32* %62, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %21, %56, %31
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @coap_make_response(i32*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @coap_buffer_to_string(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @lua_put_line(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @system_os_post(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
