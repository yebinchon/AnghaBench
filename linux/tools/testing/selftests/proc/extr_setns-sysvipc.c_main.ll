; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_setns-sysvipc.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_setns-sysvipc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = common dso_local global i32 0, align 4
@CLONE_NEWIPC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/%u/ns/ipc\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"/proc/sysvipc/shm\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [138 x i8] c"       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\0A\00", align 1
@.str.3 = private unnamed_addr constant [171 x i8] c"       key      shmid perms                  size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime                   rss                  swap\0A\00", align 1
@S32 = common dso_local global i32 0, align 4
@S64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 0, i8* %3, align 1
  %9 = load i32, i32* @f, align 4
  %10 = call i32 @atexit(i32 %9)
  %11 = load i32, i32* @CLONE_NEWIPC, align 4
  %12 = call i32 @unshare(i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %0
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOSYS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EPERM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 4, i32* %1, align 4
  br label %119

23:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %119

24:                                               ; preds = %0
  %25 = load i32, i32* @IPC_PRIVATE, align 4
  %26 = load i32, i32* @IPC_CREAT, align 4
  %27 = call i32 @shmget(i32 %25, i32 1, i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %1, align 4
  br label %119

30:                                               ; preds = %24
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %32 = call i32 @pipe(i32* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %1, align 4
  br label %119

35:                                               ; preds = %30
  %36 = call i32 (...) @fork()
  store i32 %36, i32* @pid, align 4
  %37 = load i32, i32* @pid, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %119

40:                                               ; preds = %35
  %41 = load i32, i32* @pid, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* @CLONE_NEWIPC, align 4
  %45 = call i32 @unshare(i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %1, align 4
  br label %119

48:                                               ; preds = %43
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write(i32 %50, i8* %3, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %1, align 4
  br label %119

54:                                               ; preds = %48
  %55 = call i32 (...) @pause()
  store i32 0, i32* %1, align 4
  br label %119

56:                                               ; preds = %40
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @read(i32 %58, i8* %3, i32 1)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %1, align 4
  br label %119

62:                                               ; preds = %56
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %64 = load i32, i32* @pid, align 4
  %65 = call i32 @snprintf(i8* %63, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %67 = load i32, i32* @O_RDONLY, align 4
  %68 = call i32 @open(i8* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %1, align 4
  br label %119

72:                                               ; preds = %62
  %73 = load i32, i32* @O_RDONLY, align 4
  %74 = call i32 @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @CLONE_NEWIPC, align 4
  %77 = call i32 @setns(i32 %75, i32 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %1, align 4
  br label %119

80:                                               ; preds = %72
  %81 = load i32, i32* @pid, align 4
  %82 = load i32, i32* @SIGTERM, align 4
  %83 = call i32 @kill(i32 %81, i32 %82)
  store i32 0, i32* @pid, align 4
  %84 = load i32, i32* @O_RDONLY, align 4
  %85 = call i32 @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 1, i32* %1, align 4
  br label %119

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %92 = call i32 @read(i32 %90, i8* %91, i32 4096)
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @strlen(i32 ptrtoint ([138 x i8]* @.str.2 to i32))
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %99 = call i64 @strlen(i32 ptrtoint ([138 x i8]* @.str.2 to i32))
  %100 = call i64 @memcmp(i8* %98, i32 ptrtoint ([138 x i8]* @.str.2 to i32), i64 %99)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %118

104:                                              ; preds = %89
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @strlen(i32 ptrtoint ([171 x i8]* @.str.3 to i32))
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %110 = call i64 @strlen(i32 ptrtoint ([171 x i8]* @.str.3 to i32))
  %111 = call i64 @memcmp(i8* %109, i32 ptrtoint ([171 x i8]* @.str.3 to i32), i64 %110)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %117

115:                                              ; preds = %104
  %116 = call i32 @assert(i32 0)
  br label %117

117:                                              ; preds = %115, %108
  br label %118

118:                                              ; preds = %117, %97
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %118, %88, %79, %71, %61, %54, %53, %47, %39, %34, %29, %23, %22
  %120 = load i32, i32* %1, align 4
  ret i32 %120
}

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @pause(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @setns(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
