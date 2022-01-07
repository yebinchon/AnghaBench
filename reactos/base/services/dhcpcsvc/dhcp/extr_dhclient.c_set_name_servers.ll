; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_set_name_servers.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_set_name_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.client_lease = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.iaddr = type { i32, i32 }

@__const.set_name_servers.Buffer = private unnamed_addr constant [200 x i8] c"SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DHO_DOMAIN_NAME_SERVERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting DhcpNameserver: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DhcpNameServer\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 68, i32 104, i32 99, i32 112, i32 78, i32 97, i32 109, i32 101, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_name_servers(%struct.TYPE_7__* %0, %struct.client_lease* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.iaddr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.client_lease* %1, %struct.client_lease** %4, align 8
  %11 = bitcast [200 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([200 x i8], [200 x i8]* @__const.set_name_servers.Buffer, i32 0, i32 0), i64 200, i1 false)
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcat(i8* %12, i8* %16)
  %18 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %19 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %20 = load i32, i32* @KEY_WRITE, align 4
  %21 = call i64 @RegOpenKeyExA(i32 %18, i8* %19, i32 0, i32 %20, i32* %6)
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %112

25:                                               ; preds = %2
  %26 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %27 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* @DHO_DOMAIN_NAME_SERVERS, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %25
  %35 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %36 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* @DHO_DOMAIN_NAME_SERVERS, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i8* @malloc(i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %105

52:                                               ; preds = %34
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %88, %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 0
  store i32 4, i32* %60, align 4
  %61 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %64 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* @DHO_DOMAIN_NAME_SERVERS, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 %69, %72
  %74 = call i32 @memcpy(i32 %62, i64 %73, i32 4)
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast %struct.iaddr* %7 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i8* @piaddr(i64 %77)
  %79 = call i32 @strcat(i8* %75, i8* %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %59
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strcat(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %55

91:                                               ; preds = %55
  %92 = load i32, i32* @MID_TRACE, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @DH_DbgPrint(i32 %92, i8* %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @REG_SZ, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = add nsw i64 %100, 1
  %102 = call i32 @RegSetValueExA(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %96, i32 %98, i64 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %91, %34
  br label %109

106:                                              ; preds = %25
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @RegDeleteValueW(i32 %107, i8* bitcast ([15 x i32]* @.str.3 to i8*))
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  br label %112

112:                                              ; preds = %109, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i32, i64, i32) #2

declare dso_local i8* @piaddr(i64) #2

declare dso_local i32 @DH_DbgPrint(i32, i8*) #2

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @RegDeleteValueW(i32, i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
