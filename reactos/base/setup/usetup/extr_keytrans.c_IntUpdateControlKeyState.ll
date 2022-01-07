; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_keytrans.c_IntUpdateControlKeyState.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_keytrans.c_IntUpdateControlKeyState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@KEY_E1 = common dso_local global i32 0, align 4
@KEY_E0 = common dso_local global i32 0, align 4
@SHIFT_PRESSED = common dso_local global i32 0, align 4
@LEFT_CTRL_PRESSED = common dso_local global i32 0, align 4
@LEFT_ALT_PRESSED = common dso_local global i32 0, align 4
@KEY_BREAK = common dso_local global i32 0, align 4
@CAPSLOCK_ON = common dso_local global i32 0, align 4
@NUMLOCK_ON = common dso_local global i32 0, align 4
@SCROLLLOCK_ON = common dso_local global i32 0, align 4
@RIGHT_CTRL_PRESSED = common dso_local global i32 0, align 4
@RIGHT_ALT_PRESSED = common dso_local global i32 0, align 4
@KEYBOARD_NUM_LOCK_ON = common dso_local global i32 0, align 4
@KEYBOARD_CAPS_LOCK_ON = common dso_local global i32 0, align 4
@KEYBOARD_SCROLL_LOCK_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NtDeviceIoControlFile dwLeds=%x\0A\00", align 1
@IOCTL_KEYBOARD_SET_INDICATORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"NtDeviceIoControlFile(IOCTL_KEYBOARD_SET_INDICATORS) failed (Status %lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_5__*)* @IntUpdateControlKeyState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IntUpdateControlKeyState(i32 %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KEY_E1, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %164

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KEY_E0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %77, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %75 [
    i32 42, label %33
    i32 54, label %33
    i32 29, label %35
    i32 56, label %37
    i32 58, label %39
    i32 69, label %51
    i32 70, label %63
  ]

33:                                               ; preds = %29, %29
  %34 = load i32, i32* @SHIFT_PRESSED, align 4
  store i32 %34, i32* %7, align 4
  br label %76

35:                                               ; preds = %29
  %36 = load i32, i32* @LEFT_CTRL_PRESSED, align 4
  store i32 %36, i32* %7, align 4
  br label %76

37:                                               ; preds = %29
  %38 = load i32, i32* @LEFT_ALT_PRESSED, align 4
  store i32 %38, i32* %7, align 4
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KEY_BREAK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @CAPSLOCK_ON, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %39
  br label %76

51:                                               ; preds = %29
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @KEY_BREAK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @NUMLOCK_ON, align 4
  %60 = load i32, i32* %9, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %51
  br label %76

63:                                               ; preds = %29
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @KEY_BREAK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @SCROLLLOCK_ON, align 4
  %72 = load i32, i32* %9, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %63
  br label %76

75:                                               ; preds = %29
  br label %164

76:                                               ; preds = %74, %62, %50, %37, %35, %33
  br label %87

77:                                               ; preds = %20
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %85 [
    i32 29, label %81
    i32 56, label %83
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @RIGHT_CTRL_PRESSED, align 4
  store i32 %82, i32* %7, align 4
  br label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @RIGHT_ALT_PRESSED, align 4
  store i32 %84, i32* %7, align 4
  br label %86

85:                                               ; preds = %77
  br label %164

86:                                               ; preds = %83, %81
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* @NUMLOCK_ON, align 4
  %92 = load i32, i32* @CAPSLOCK_ON, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SCROLLLOCK_ON, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %90, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %144

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @NUMLOCK_ON, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* @KEYBOARD_NUM_LOCK_ON, align 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %98
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @CAPSLOCK_ON, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* @KEYBOARD_CAPS_LOCK_ON, align 4
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SCROLLLOCK_ON, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, i32* @KEYBOARD_SCROLL_LOCK_ON, align 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @IOCTL_KEYBOARD_SET_INDICATORS, align 4
  %136 = call i32 @NtDeviceIoControlFile(i32 %134, i32* null, i32* null, i32* null, i32* %10, i32 %135, %struct.TYPE_6__* %12, i32 16, i32* null, i32 0)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @NT_SUCCESS(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @DPRINT1(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %130
  br label %161

144:                                              ; preds = %87
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @KEY_BREAK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %160

156:                                              ; preds = %144
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %143
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %5, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %85, %75, %19
  ret void
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @NtDeviceIoControlFile(i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
