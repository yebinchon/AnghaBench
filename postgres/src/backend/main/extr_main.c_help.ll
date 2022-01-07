; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/main/extr_main.c_help.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/main/extr_main.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"%s is the PostgreSQL server.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage:\0A  %s [OPTION]...\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"  -B NBUFFERS        number of shared buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"  -c NAME=VALUE      set run-time parameter\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"  -C NAME            print value of run-time parameter, then exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"  -d 1-5             debugging level\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"  -D DATADIR         database directory\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"  -e                 use European date input format (DMY)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"  -F                 turn fsync off\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"  -h HOSTNAME        host name or IP address to listen on\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"  -i                 enable TCP/IP connections\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"  -k DIRECTORY       Unix-domain socket location\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"  -N MAX-CONNECT     maximum number of allowed connections\0A\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"  -o OPTIONS         pass \22OPTIONS\22 to each server process (obsolete)\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"  -p PORT            port number to listen on\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"  -s                 show statistics after each query\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"  -S WORK-MEM        set amount of memory for sorts (in kB)\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"  -V, --version      output version information, then exit\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"  --NAME=VALUE       set run-time parameter\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"  --describe-config  describe configuration parameters, then exit\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"  -?, --help         show this help, then exit\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\0ADeveloper options:\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"  -f s|i|n|m|h       forbid use of some plan types\0A\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"  -n                 do not reinitialize shared memory after abnormal exit\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"  -O                 allow system table structure changes\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"  -P                 disable system indexes\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"  -t pa|pl|ex        show timings after each query\0A\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"  -T                 send SIGSTOP to all backend processes if one dies\0A\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"  -W NUM             wait NUM seconds to allow attach from a debugger\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"\0AOptions for single-user mode:\0A\00", align 1
@.str.31 = private unnamed_addr constant [72 x i8] c"  --single           selects single-user mode (must be first argument)\0A\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"  DBNAME             database name (defaults to user name)\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"  -d 0-5             override debugging level\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"  -E                 echo statement before execution\0A\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"  -j                 do not use newline as interactive query delimiter\0A\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"  -r FILENAME        send stdout and stderr to given file\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"\0AOptions for bootstrapping mode:\0A\00", align 1
@.str.38 = private unnamed_addr constant [74 x i8] c"  --boot             selects bootstrapping mode (must be first argument)\0A\00", align 1
@.str.39 = private unnamed_addr constant [79 x i8] c"  DBNAME             database name (mandatory argument in bootstrapping mode)\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"  -x NUM             internal use\0A\00", align 1
@.str.41 = private unnamed_addr constant [210 x i8] c"\0APlease read the documentation for the complete list of run-time\0Aconfiguration settings and how to set them on the command line or in\0Athe configuration file.\0A\0AReport bugs to <pgsql-bugs@lists.postgresql.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* %3, i8* %4)
  %6 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* %6, i8* %7)
  %9 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13)
  %15 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  %45 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* %51)
  %53 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.24, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* %53)
  %55 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* %59)
  %61 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.28, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0))
  %64 = call i32 (i8*, ...) @printf(i8* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* %65)
  %67 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.31, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  %73 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* %73)
  %75 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.35, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @printf(i8* %75)
  %77 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @printf(i8* %77)
  %79 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* %79)
  %81 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.38, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* %81)
  %83 = call i8* @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.39, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* %83)
  %85 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* %85)
  %87 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @printf(i8* %87)
  %89 = call i8* @_(i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.41, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* %89)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
