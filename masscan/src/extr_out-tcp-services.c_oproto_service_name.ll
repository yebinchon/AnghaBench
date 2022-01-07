; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-tcp-services.c_oproto_service_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-tcp-services.c_oproto_service_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@oproto_services = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @oproto_service_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.protoent*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i8**, i8*** @oproto_services, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8*, i8** %5, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i8**, i8*** @oproto_services, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.protoent* @getprotobynumber(i32 %18)
  store %struct.protoent* %19, %struct.protoent** %4, align 8
  %20 = load %struct.protoent*, %struct.protoent** %4, align 8
  %21 = icmp eq %struct.protoent* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.protoent*, %struct.protoent** %4, align 8
  %25 = getelementptr inbounds %struct.protoent, %struct.protoent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @strdup(i32 %26)
  %28 = load i8**, i8*** @oproto_services, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8* %27, i8** %31, align 8
  store i8* %27, i8** %2, align 8
  br label %32

32:                                               ; preds = %23, %22, %11
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
