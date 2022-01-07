; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Exclude 53,T:9100,U:30000-40000\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Probe UDP DNSStatusRequest q|\\0\\0\\x10\\0\\0\\0\\0\\0\\0\\0\\0\\0|\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Probe TCP GetRequest q|GET / HTTP/1.0\0D\0A\0D\0A|\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ports 80\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sslports 443\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Probe TCP NULL q||\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ports 21,43,110,113,199,505,540,1248,5432,30444\0A\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"match ftp m/^220.*Welcome to .*Pure-?FTPd (\\d\\S+\\s*)/ p/Pure-FTPd/ v/$1/ cpe:/a:pureftpd:pure-ftpd:$1/\0A\00", align 1
@.str.8 = private unnamed_addr constant [113 x i8] c"match ssh m/^SSH-([\\d.]+)-OpenSSH[_-]([\\w.]+)\\r?\\n/i p/OpenSSH/ v/$2/ i/protocol $1/ cpe:/a:openbsd:openssh:$2/\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"match mysql m|^\\x10\\0\\0\\x01\\xff\\x13\\x04Bad handshake$| p/MySQL/ cpe:/a:mysql:mysql/\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"match chargen m|@ABCDEFGHIJKLMNOPQRSTUVWXYZ|\0A\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"match uucp m|^login: login: login: $| p/NetBSD uucpd/ o/NetBSD/ cpe:/o:netbsd:netbsd/a\0A\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"match printer m|^([\\w-_.]+): lpd: Illegal service request\\n$| p/lpd/ h/$1/\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"match afs m|^[\\d\\D]{28}\\s*(OpenAFS)([\\d\\.]{3}[^\\s\\0]*)\\0| p/$1/ v/$2/\0A\00", align 1
@__const.nmapserviceprobes_selftest.lines = private unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"<selftest>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nmapserviceprobes_selftest() #0 {
  %1 = alloca [15 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.NmapServiceProbeList*, align 8
  %4 = bitcast [15 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([15 x i8*]* @__const.nmapserviceprobes_selftest.lines to i8*), i64 120, i1 false)
  %5 = call %struct.NmapServiceProbeList* @nmapserviceprobes_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store %struct.NmapServiceProbeList* %5, %struct.NmapServiceProbeList** %3, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [15 x i8*], [15 x i8*]* %1, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %15 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [15 x i8*], [15 x i8*]* %1, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @parse_line(%struct.NmapServiceProbeList* %16, i8* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %6

25:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.NmapServiceProbeList* @nmapserviceprobes_new(i8*) #2

declare dso_local i32 @parse_line(%struct.NmapServiceProbeList*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
