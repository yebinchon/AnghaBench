; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_cookies.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_parse_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_value = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@identity_decode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_request*)* @parse_cookies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cookies(%struct.lwan_request* %0) #0 {
  %2 = alloca %struct.lwan_request*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_value, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %2, align 8
  %5 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %6 = call i8* @lwan_request_get_header(%struct.lwan_request* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %4, i32 0, i32 0
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %4, i32 0, i32 1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %13, align 8
  %16 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %17 = load %struct.lwan_request*, %struct.lwan_request** %2, align 8
  %18 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @identity_decode, align 4
  %22 = call i32 @parse_key_values(%struct.lwan_request* %16, %struct.lwan_value* %4, i32* %20, i32 %21, i8 signext 59)
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i8* @lwan_request_get_header(%struct.lwan_request*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_key_values(%struct.lwan_request*, %struct.lwan_value*, i32*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
