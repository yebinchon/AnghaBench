; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_sp_open.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_sp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i8*, i64, i32, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.termios = type { i32, i32, i64*, i64, i64, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@CBR_115200 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@DTR_CONTROL_DISABLE = common dso_local global i32 0, align 4
@EV_ERR = common dso_local global i32 0, align 4
@EV_RXCHAR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@NOPARITY = common dso_local global i32 0, align 4
@ONESTOPBIT = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@RTS_CONTROL_DISABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@read_ovl = common dso_local global i32 0, align 4
@wait_ovl = common dso_local global i32 0, align 4
@write_ovl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*)* @sp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_open(%struct.gport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gport*, align 8
  %4 = alloca %struct.termios, align 8
  store %struct.gport* %0, %struct.gport** %3, align 8
  %5 = bitcast %struct.termios* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false)
  %6 = load %struct.gport*, %struct.gport** %3, align 8
  %7 = getelementptr inbounds %struct.gport, %struct.gport* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i32, i32* @O_NONBLOCK, align 4
  %10 = load i32, i32* @O_NOCTTY, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @r_sandbox_open(i8* %8, i32 %13, i32 0)
  %15 = load %struct.gport*, %struct.gport** %3, align 8
  %16 = getelementptr inbounds %struct.gport, %struct.gport* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = icmp slt i32 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load %struct.gport*, %struct.gport** %3, align 8
  %21 = getelementptr inbounds %struct.gport, %struct.gport* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @tcgetattr(i32 %22, %struct.termios* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.gport*, %struct.gport** %3, align 8
  %27 = call i32 @sp_close(%struct.gport* %26)
  store i32 -1, i32* %2, align 4
  br label %94

28:                                               ; preds = %19
  %29 = load i32, i32* @B115200, align 4
  %30 = call i32 @cfsetospeed(%struct.termios* %4, i32 %29)
  %31 = load i32, i32* @B115200, align 4
  %32 = call i32 @cfsetispeed(%struct.termios* %4, i32 %31)
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CSIZE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @CS8, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @IGNBRK, align 4
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @VMIN, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @VTIME, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @IXON, align 4
  %57 = load i32, i32* @IXOFF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IXANY, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @CLOCAL, align 4
  %66 = load i32, i32* @CREAD, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @PARENB, align 4
  %72 = load i32, i32* @PARODD, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @CSTOPB, align 4
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %79
  store i32 %82, i32* %80, align 8
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 2147483647
  store i32 %85, i32* %83, align 8
  %86 = load %struct.gport*, %struct.gport** %3, align 8
  %87 = getelementptr inbounds %struct.gport, %struct.gport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TCSANOW, align 4
  %90 = call i64 @tcsetattr(i32 %88, i32 %89, %struct.termios* %4)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %94

93:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %92, %25, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #2

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #2

declare dso_local i32 @sp_close(%struct.gport*) #2

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #2

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #2

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
