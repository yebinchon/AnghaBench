; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_IsUserInGroup.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_IsUserInGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@NERR_Success = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@NERR_GroupNotFound = common dso_local global i64 0, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"In NetLocalGroupGetMembers for group '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i32*)* @IsUserInGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsUserInGroup(i32 %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = ptrtoint i32* %24 to i32
  %30 = call i32 @_countof(i32* %24)
  %31 = call i64 @LookupSID(i32* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  store i64 0, i64* %14, align 8
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = ptrtoint i32* %24 to i32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @EqualSid(i32 %41, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %129

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %14, align 8
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %27, %3
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %129

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %110, %63
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = bitcast %struct.TYPE_8__** %18 to i32*
  %67 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %68 = call i64 @NetLocalGroupGetMembers(i32* null, i32* %65, i32 0, i32* %66, i32 %67, i64* %16, i64* %17, i32* %9)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @NERR_Success, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @ERROR_MORE_DATA, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %112

77:                                               ; preds = %72, %64
  store i64 0, i64* %19, align 8
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @EqualSid(i32 %93, i32 %94)
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %88
  %97 = load i64, i64* %19, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %19, align 8
  br label %78

99:                                               ; preds = %86
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %101 = call i32 @NetApiBufferFree(%struct.TYPE_8__* %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @ERROR_MORE_DATA, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = icmp slt i32 %107, 100
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %64, label %112

112:                                              ; preds = %110, %76
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @NERR_Success, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @NERR_GroupNotFound, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @SetLastError(i64 %121)
  %123 = load i32, i32* @M_SYSERR, align 4
  %124 = call i32 @TEXT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @MsgToEventLog(i32 %123, i32 %124, i32* %125)
  br label %127

127:                                              ; preds = %120, %116, %112
  %128 = load i64, i64* %8, align 8
  store i64 %128, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %129

129:                                              ; preds = %127, %61, %51
  %130 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @LookupSID(i32*, i32, i32) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i64 @EqualSid(i32, i32) #2

declare dso_local i64 @NetLocalGroupGetMembers(i32*, i32*, i32, i32*, i32, i64*, i64*, i32*) #2

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_8__*) #2

declare dso_local i32 @SetLastError(i64) #2

declare dso_local i32 @MsgToEventLog(i32, i32, i32*) #2

declare dso_local i32 @TEXT(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
