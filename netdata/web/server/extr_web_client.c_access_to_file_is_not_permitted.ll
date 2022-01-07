; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_access_to_file_is_not_permitted.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_access_to_file_is_not_permitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CT_TEXT_HTML = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Access to file is not permitted: \00", align 1
@HTTP_RESP_FORBIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.web_client*, i8*)* @access_to_file_is_not_permitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_to_file_is_not_permitted(%struct.web_client* %0, i8* %1) #0 {
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i8*, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @CT_TEXT_HTML, align 4
  %6 = load %struct.web_client*, %struct.web_client** %3, align 8
  %7 = getelementptr inbounds %struct.web_client, %struct.web_client* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 4
  %11 = load %struct.web_client*, %struct.web_client** %3, align 8
  %12 = getelementptr inbounds %struct.web_client, %struct.web_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @buffer_strcat(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.web_client*, %struct.web_client** %3, align 8
  %17 = getelementptr inbounds %struct.web_client, %struct.web_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @buffer_strcat_htmlescape(%struct.TYPE_5__* %19, i8* %20)
  %22 = load i32, i32* @HTTP_RESP_FORBIDDEN, align 4
  ret i32 %22
}

declare dso_local i32 @buffer_strcat(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @buffer_strcat_htmlescape(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
