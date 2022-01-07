; ModuleID = '/home/carl/AnghaBench/mongoose/examples/mcast_udp_server/extr_mcast_udp_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/mcast_udp_server/extr_mcast_udp_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }
%struct.ip_mreq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@MCAST_GROUP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"udp://%s\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"cannot bind\0A\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Adding multicast group error\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Starting mcast server on port %s listening to group %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca %struct.ip_mreq, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** @MCAST_GROUP, align 8
  store i8* %14, i8** %11, align 8
  store i32 1, i32* %12, align 4
  br label %15

15:                                               ; preds = %67, %2
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  br label %66

34:                                               ; preds = %19
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %65

49:                                               ; preds = %34
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %57, %49
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %27
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %15

70:                                               ; preds = %15
  %71 = load i8*, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 @usage(i8** %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* @ev_handler, align 4
  %83 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %81, i32 %82)
  store %struct.mg_connection* %83, %struct.mg_connection** %8, align 8
  %84 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %85 = icmp eq %struct.mg_connection* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %76
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @inet_addr(i8* %90)
  %92 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %9, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i8* @inet_addr(i8* %94)
  %96 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %9, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %99 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IPPROTO_IP, align 4
  %102 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %103 = bitcast %struct.ip_mreq* %9 to i8*
  %104 = call i64 @setsockopt(i32 %100, i32 %101, i32 %102, i8* %103, i32 16)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %89
  %107 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %89
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %113, %109
  %114 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %113
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8**) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
