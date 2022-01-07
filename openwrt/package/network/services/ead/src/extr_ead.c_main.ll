; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ead_instance = type { i32, i32, i32 }
%struct.timeval = type { i32, i64 }

@instances = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bd:D:fhp:P:\00", align 1
@nonfork = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@dev_name = common dso_local global i8* null, align 8
@passwd_file = common dso_local global i8* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@server_handle_sigchld = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@server_handle_sigint = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: ead needs at least one interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ethmac = common dso_local global i64 0, align 8
@nid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ead_instance*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @usage(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = call i32 @INIT_LIST_HEAD(i32* @instances)
  br label %24

24:                                               ; preds = %63, %22
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %63 [
    i32 66, label %31
    i32 102, label %32
    i32 104, label %33
    i32 100, label %38
    i32 68, label %57
    i32 112, label %59
    i32 80, label %61
  ]

31:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %63

32:                                               ; preds = %29
  store i32 1, i32* @nonfork, align 4
  br label %63

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @usage(i8* %36)
  store i32 %37, i32* %3, align 4
  br label %141

38:                                               ; preds = %29
  %39 = call %struct.ead_instance* @malloc(i32 12)
  store %struct.ead_instance* %39, %struct.ead_instance** %6, align 8
  %40 = load %struct.ead_instance*, %struct.ead_instance** %6, align 8
  %41 = call i32 @memset(%struct.ead_instance* %40, i32 0, i32 12)
  %42 = load %struct.ead_instance*, %struct.ead_instance** %6, align 8
  %43 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.ead_instance*, %struct.ead_instance** %6, align 8
  %46 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @strncpy(i32 %47, i8* %48, i32 3)
  %50 = load %struct.ead_instance*, %struct.ead_instance** %6, align 8
  %51 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %50, i32 0, i32 1
  %52 = call i32 @list_add(i32* %51, i32* @instances)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ead_instance*, %struct.ead_instance** %6, align 8
  %56 = getelementptr inbounds %struct.ead_instance, %struct.ead_instance* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %63

57:                                               ; preds = %29
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @dev_name, align 8
  br label %63

59:                                               ; preds = %29
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @passwd_file, align 8
  br label %63

61:                                               ; preds = %29
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %29, %61, %59, %57, %38, %32, %31
  br label %24

64:                                               ; preds = %24
  %65 = load i32, i32* @SIGCHLD, align 4
  %66 = load i32, i32* @server_handle_sigchld, align 4
  %67 = call i32 @signal(i32 %65, i32 %66)
  %68 = load i32, i32* @SIGINT, align 4
  %69 = load i32, i32* @server_handle_sigint, align 4
  %70 = call i32 @signal(i32 %68, i32 %69)
  %71 = load i32, i32* @SIGTERM, align 4
  %72 = load i32, i32* @server_handle_sigint, align 4
  %73 = call i32 @signal(i32 %71, i32 %72)
  %74 = load i32, i32* @SIGKILL, align 4
  %75 = load i32, i32* @server_handle_sigint, align 4
  %76 = call i32 @signal(i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %141

82:                                               ; preds = %64
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = call i64 (...) @fork()
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @exit(i32 0) #3
  unreachable

90:                                               ; preds = %85
  %91 = load i32, i32* @O_RDWR, align 4
  %92 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dup2(i32 %93, i32 0)
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dup2(i32 %95, i32 1)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @dup2(i32 %97, i32 2)
  br label %99

99:                                               ; preds = %90, %82
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @unlink(i8* %103)
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* @O_CREAT, align 4
  %107 = load i32, i32* @O_WRONLY, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @O_EXCL, align 4
  %110 = or i32 %108, %109
  %111 = call i32 (i8*, i32, ...) @open(i8* %105, i32 %110, i32 420)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %102
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %116 = call i32 (...) @getpid()
  %117 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @write(i32 %118, i8* %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @close(i32 %122)
  br label %124

124:                                              ; preds = %114, %102
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i64, i64* @ethmac, align 8
  %127 = add nsw i64 %126, 3
  %128 = call i32 @get_random_bytes(i64 %127, i32 3)
  %129 = load i64, i64* @ethmac, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* @nid, align 4
  %133 = call i32 @start_servers(i32 0)
  %134 = call i32 (...) @br_init()
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %125, %137
  %138 = call i32 (...) @check_all_interfaces()
  %139 = call i32 @start_servers(i32 1)
  %140 = call i32 @sleep(i32 1)
  br label %137

141:                                              ; preds = %79, %33, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local %struct.ead_instance* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ead_instance*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @get_random_bytes(i64, i32) #1

declare dso_local i32 @start_servers(i32) #1

declare dso_local i32 @br_init(...) #1

declare dso_local i32 @check_all_interfaces(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
