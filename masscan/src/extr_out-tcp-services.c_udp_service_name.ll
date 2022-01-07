; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-tcp-services.c_udp_service_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-tcp-services.c_udp_service_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@udp_services = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @udp_service_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.servent, align 4
  %6 = alloca %struct.servent*, align 8
  %7 = alloca [2048 x i8], align 16
  store i32 %0, i32* %3, align 4
  %8 = load i8**, i8*** @udp_services, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i8**, i8*** @udp_services, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i16
  %23 = call i32 @htons(i16 zeroext %22)
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %25 = call i32 @getservbyport_r(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.servent* %5, i8* %24, i32 2048, %struct.servent** %6)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.servent*, %struct.servent** %6, align 8
  %30 = icmp eq %struct.servent* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.servent, %struct.servent* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @strdup(i32 %34)
  %36 = load i8**, i8*** @udp_services, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %35, i8** %39, align 8
  store i8* %35, i8** %2, align 8
  br label %40

40:                                               ; preds = %32, %31, %14
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @getservbyport_r(i32, i8*, %struct.servent*, i8*, i32, %struct.servent**) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
