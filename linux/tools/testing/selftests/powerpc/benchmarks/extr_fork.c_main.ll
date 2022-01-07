; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_fork.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_fork.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@options = common dso_local global %struct.TYPE_3__* null, align 8
@optarg = common dso_local global i8* null, align 8
@timeout = common dso_local global i8* null, align 8
@do_fork = common dso_local global i64 0, align 8
@do_vfork = common dso_local global i64 0, align 8
@do_exec = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@exec_target = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4
@exec_file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Using \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" + exec\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" on cpu %d\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@bench_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %2, %40
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %14 = call signext i8 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %13, i32* %7)
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %41

19:                                               ; preds = %10
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %37 [
    i32 0, label %22
    i32 115, label %34
  ]

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %40

31:                                               ; preds = %22
  %32 = call i32 (...) @usage()
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %19
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @atoi(i8* %35)
  store i8* %36, i8** @timeout, align 8
  br label %40

37:                                               ; preds = %19
  %38 = call i32 (...) @usage()
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %34, %30
  br label %10

41:                                               ; preds = %18
  %42 = load i64, i64* @do_fork, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* @do_vfork, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 (...) @usage()
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %44, %41
  %51 = load i64, i64* @do_exec, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64, i64* @do_fork, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @do_vfork, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 (...) @usage()
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %56, %53, %50
  %63 = load i64, i64* @do_exec, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @strdup(i8* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %96, %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @chdir(i8* %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %84
  br label %99

96:                                               ; preds = %76
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  br label %73

99:                                               ; preds = %95, %73
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i64, i64* @exec_target, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @exit(i32 0) #3
  unreachable

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @optind, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 -1, i32* @cpu, align 4
  br label %120

111:                                              ; preds = %105
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @optind, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @atoi(i8* %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* @cpu, align 4
  br label %120

120:                                              ; preds = %111, %110
  %121 = load i64, i64* @do_exec, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** @exec_file, align 8
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* @cpu, align 4
  %129 = call i32 @set_cpu(i32 %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i64, i64* @do_fork, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %143

135:                                              ; preds = %127
  %136 = load i64, i64* @do_vfork, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %142

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i64, i64* @do_exec, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32, i32* @cpu, align 4
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = call i32 (...) @getpid()
  %152 = call i32 (...) @getpid()
  %153 = call i32 @setpgid(i32 %151, i32 %152)
  %154 = load i32, i32* @SIGUSR1, align 4
  %155 = load i32, i32* @sigusr1_handler, align 4
  %156 = call i32 @signal(i32 %154, i32 %155)
  %157 = load i32, i32* @bench_proc, align 4
  %158 = load i32, i32* @cpu, align 4
  %159 = call i32 @start_process_on(i32 %157, i32* null, i32 %158)
  br label %160

160:                                              ; preds = %148, %160
  %161 = call i32 @sleep(i32 3600)
  br label %160
}

declare dso_local signext i8 @getopt_long(i32, i8**, i8*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @set_cpu(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @start_process_on(i32, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
